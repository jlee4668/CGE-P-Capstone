# CGE-P Lab 2.3 — Compliant S3 Resource

## Overview

This lab implements a reusable Terraform infrastructure primitive for
deploying an AWS S3 data bucket with security and compliance controls.

The implementation demonstrates how NIST SP 800-53 control requirements
can be translated into enforceable infrastructure-as-code.

## Architecture

The primitive creates:

- A primary S3 data bucket
- A dedicated S3 access logging bucket
- AES-256 server-side encryption
- S3 versioning
- S3 public access blocking
- Required compliance tags
- S3 access logging

## Control Mapping

| Control | Implementation | Evidence |
|---|---|---|
| SC-28 | AES-256 server-side encryption | AWS S3 encryption configuration |
| AC-3 | Four S3 public access block settings enabled | AWS S3 public access block configuration |
| CM-6 | Required resource tags and versioning | AWS tags/versioning configuration |
| AU-3 | S3 access logging | AWS S3 logging configuration |
| AU-6 | Dedicated audit log destination | S3 logging bucket |

## Terraform Resources

The primitive deploys 11 resources:

- Primary S3 bucket
- Logging S3 bucket
- Random bucket-name suffix
- Primary bucket encryption
- Logging bucket encryption
- Primary bucket versioning
- Primary bucket public access block
- Logging bucket public access block
- Logging bucket ownership controls
- Logging bucket ACL
- Primary bucket access logging

## Evidence

Machine-readable evidence is stored under:

```text
evidence/lab-2-3/
├── plan.json
└── state.json
