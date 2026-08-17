# CGE-P Capstone

A hands-on portfolio demonstrating Governance, Risk, and Compliance (GRC) engineering through infrastructure-as-code, automated control validation, evidence generation, and continuous compliance practices.

## Overview

This repository documents my progression through the CGE-P (Cloud GRC Engineering Professional) labs and capstone work.

The project focuses on applying engineering practices to traditionally manual GRC activities by translating security and compliance requirements into:

- Infrastructure-as-Code (IaC)
- Enforceable cloud security controls
- Automated compliance validation
- Machine-readable evidence
- Control-to-implementation traceability
- Independent infrastructure verification
- Policy-as-code
- CI/CD compliance checks
- Repeatable and auditable GRC workflows

The objective is to demonstrate how compliance can become an integrated part of the engineering lifecycle rather than a separate, manual documentation activity.

---

## Core Principles

### Requirements as Code

Security and compliance requirements should be translated into explicit, testable infrastructure configurations whenever possible.

### Preventive Compliance

Controls should be implemented directly into infrastructure so that non-compliant configurations are prevented or identified as early as possible.

### Independent Verification

Terraform configuration and state provide valuable evidence, but deployed infrastructure should also be independently verified through cloud-provider APIs or other authoritative sources.

### Machine-Readable Evidence

Compliance evidence should be structured so that it can be consumed by automated assessment and policy engines rather than relying exclusively on screenshots or manually assembled documentation.

### Traceability

Each security requirement should be traceable through the implementation and verification lifecycle:

```text
Security Requirement
        ↓
Infrastructure Implementation
        ↓
Automated / Independent Verification
        ↓
Machine-Readable Evidence
