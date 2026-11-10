package compliance.sc28_test

import data.compliance.sc28
import rego.v1

# Synthetic Terraform plan: compliant bucket
compliant_input := {"planned_values": {"root_module": {"resources": [{
	"address": "google_storage_bucket.good",
	"type": "google_storage_bucket",
	"values": {
		"name": "good",
		"encryption": [{
			"default_kms_key_name": "projects/x/locations/us/keyRings/r/cryptoKeys/k",
		}],
	},
}]}}}

# Synthetic Terraform plan: bucket missing CMEK
noncompliant_input := {"planned_values": {"root_module": {"resources": [{
	"address": "google_storage_bucket.bad",
	"type": "google_storage_bucket",
	"values": {
		"name": "bad",
		"encryption": [],
	},
}]}}}

test_compliant_passes if {
	violations := sc28.deny with input as compliant_input
	count(violations) == 0
}

test_noncompliant_fails if {
	violations := sc28.deny with input as noncompliant_input
	count(violations) > 0

	some msg in violations
	contains(msg, "SC-28")
	contains(msg, "google_storage_bucket.bad")
}
