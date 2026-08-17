# CGE-P Capstone

A hands-on portfolio demonstrating Governance, Risk, and Compliance (GRC) engineering through infrastructure-as-code, automated compliance validation, evidence generation, and continuous compliance practices.

## Overview

This repository documents my progression through the CGE-P (Cloud GRC Engineering Professional) labs and capstone work.

The goal of this project is to demonstrate how security and compliance requirements can be translated into:

- Infrastructure-as-Code (IaC)
- Automated security controls
- Machine-readable compliance evidence
- Control-to-implementation mappings
- Independent infrastructure verification
- Policy-as-code
- CI/CD compliance checks
- Repeatable and auditable GRC engineering workflows

Rather than treating compliance as a manual documentation exercise, this project explores how GRC requirements can be incorporated directly into the engineering lifecycle.

---

## Technology Stack

Current technologies used throughout the project include:

- **AWS** — Cloud infrastructure
- **Terraform** — Infrastructure-as-Code
- **AWS CLI** — Independent infrastructure verification
- **Git / GitHub** — Source control and evidence repository
- **JSON** — Machine-readable compliance evidence
- **NIST SP 800-53** — Security control framework
- **CGE-P** — GRC engineering methodology

Additional technologies will be added as the project progresses.

---

# Labs

## Lab 2.3 — First Compliant Resource

### Objective

Build a reusable Terraform infrastructure primitive that implements security and compliance requirements for an AWS S3 resource.

The lab demonstrates how NIST SP 800-53 security controls can be translated into enforceable cloud infrastructure configurations and subsequently verified through machine-readable evidence and direct AWS API queries.

### Infrastructure

The Terraform configuration creates:

- Primary S3 data bucket
- Dedicated S3 logging bucket
- AES-256 server-side encryption
- S3 bucket versioning
- S3 public access blocking
- Required compliance tags
- S3 access logging

### Control Mapping

| Control | Implementation | Verification |
|---|---|---|
| SC-28 | AES-256 server-side encryption | AWS S3 API |
| AC-3 | Four S3 public-access-block settings enabled | AWS S3 API |
| CM-6 | Required resource tags and versioning | AWS S3 API |
| AU-3 | S3 access logging | AWS S3 API |
| AU-6 | Dedicated audit logging destination | AWS S3 API |

### Evidence

Machine-readable evidence was generated using Terraform:

```text
evidence/
└── lab-2-3/
    ├── plan.json
    └── state.json
