
# GCP Compliance Policy Library

## Overview

This directory contains Open Policy Agent (OPA) policies
written in Rego to evaluate GCP Terraform plans against
selected NIST SP 800-53 security requirements.

## Implemented Policies

| Control | Policy | Severity | Requirement |
|---|---|---|---|
| SC-28 | sc28_encryption.rego | High | Require CMEK encryption for GCS buckets |
| AC-3 | ac3_no_public.rego | Critical | Enforce GCS public access protections and restrict public management ports |
| CM-6 | cm6_required_tags.rego | Medium | Require project, environment, managed_by, and compliance_scope labels |

## Remediation Guidance

### SC-28 — Protection of Information at Rest
Configure GCS buckets with a customer-managed encryption key
using the encryption.default_kms_key_name attribute.

### AC-3 — Access Enforcement
Enable uniform bucket-level access and enforce public access
prevention. Restrict firewall rules that expose SSH (22) or
RDP (3389) to unrestricted source ranges.

### CM-6 — Configuration Settings
Add the following labels to supported GCP resources:
- project
- environment
- managed_by
- compliance_scope

## Running Unit Tests

From the repository root:

    opa test -v policies/

Expected result: PASS: 8/8

## Evaluating Terraform Plans

Generate a Terraform plan in JSON format:

    terraform plan -out=tfplan
    terraform show -json tfplan > plan.json

Evaluate individual policies:

    opa eval -d policies -i plan.json data.compliance.sc28.deny
    opa eval -d policies -i plan.json data.compliance.ac3.deny
    opa eval -d policies -i plan.json data.compliance.cm6.deny

## Scope and Limitations

These policies implement selected technical checks associated
with NIST controls. They do not establish full NIST compliance.

The policies support specified GCP resource types and do not
comprehensively evaluate all nested Terraform modules or
possible access configurations.