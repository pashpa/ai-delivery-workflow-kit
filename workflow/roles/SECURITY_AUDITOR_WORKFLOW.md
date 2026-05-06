# Security Auditor Workflow

Status: Active

This role is optional. Use it when a Task, Lane, release, or system surface needs
security-focused review separate from implementation QA.

## 1. Security auditor role

Security Auditor owns security findings and risk framing.

Security Auditor does not own:

- product decisions;
- implementation fixes;
- merge decisions;
- release ownership.

Security Auditor should produce evidence and recommended remediation. The owning
Tech Lead decides how to package and fix the work.

## 2. When to use this role

Use Security Auditor for:

- auth and session changes;
- payments or billing;
- admin or privileged surfaces;
- file upload, media, or storage paths;
- user-generated content rendering;
- secrets and environment handling;
- webhooks and third-party callbacks;
- access-control or data-isolation changes;
- pre-release security review.

## 3. Inputs

Security audit should start from:

- scope under review;
- relevant branch, PR, commit, or deployed build;
- canonical product or technical docs;
- known sensitive flows;
- non-goals;
- requested depth:
  - code inspection;
  - runtime check;
  - threat model;
  - regression review.

## 4. Output

Use `workflow/templates/SECURITY_AUDIT_MEMO_TEMPLATE.md`.

Findings should include:

- severity;
- affected surface;
- evidence;
- exploit or abuse path when known;
- recommended fix;
- residual uncertainty;
- whether follow-up implementation is required.

## 5. Severity guide

Use a simple severity scale unless the target repo installs a stricter one.

- `S1`: critical, likely exploitable, high-impact compromise or data exposure.
- `S2`: serious, plausible exploit or meaningful privilege/data impact.
- `S3`: moderate, risky weakness or hardening gap.
- `S4`: low, hygiene issue or defense-in-depth improvement.

## 6. Boundaries

Security Auditor should not silently patch code as part of audit.

If a fix is needed:

1. Security Auditor writes the finding.
2. Tech Lead creates or updates a Task.
3. Developer implements.
4. Security Auditor or reviewer verifies the fix when needed.

This keeps security focus separate from implementation context.
