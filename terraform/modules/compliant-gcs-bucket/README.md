# Compliant GCS Bucket Module

This Terraform module provisions a compliance-focused Google Cloud Storage bucket and associated customer-managed KMS encryption.

## NIST Controls

* **SC-12 — Cryptographic Key Establishment:** Creates and manages a customer-controlled Cloud KMS key ring and cryptographic key.
* **SC-13 — Cryptographic Protection:** Uses the customer-managed KMS key to encrypt data at rest with 90-day key rotation.
* **SC-28 — Protection of Information at Rest:** Enforces CMEK encryption for the GCS bucket.
* **AU-11 — Audit Record Retention:** Configures a 30-day object retention policy.
* **CM-6 — Configuration Settings:** Enforces versioning, uniform bucket-level access, public access prevention, and required compliance labels
