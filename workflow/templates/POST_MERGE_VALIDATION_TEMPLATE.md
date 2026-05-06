# Post-Merge Validation Template

Date: YYYY-MM-DD
Status: draft
Owner: Tech Lead / validation owner

Use this when acceptance requires proof after merge, deploy, or runtime release.

## 1. Merge context

- Initiative:
- Track:
- Lane:
- Task or package:
- PR:
- Merge commit:
- Validation target:
  - `merged main`
  - `deployed main`
  - `production runtime`
  - `real device/runtime`
- Requested by:

## 2. What must be confirmed

- [ ] intended code is in the target branch
- [ ] intended deploy completed, if deploy proof is required
- [ ] tested runtime is using the intended build
- [ ] required user/admin/operator flow still works
- [ ] no obvious post-merge regression in scope

Important:

- do not use this template for feature-branch-only proof;
- preview proof must be labeled preview proof;
- deployed proof must prove the deployed build.

## 3. Validation artifacts

- deployed URL or runtime path:
- build / commit fingerprint:
- environment:
- account state:
- browser QA surface:
  - `Codex in-app browser`
  - `Chrome DevTools MCP`
  - `Playwright`
  - `Computer Use`
  - `manual browser`
  - `N/A`
- screenshots:
  - path / inline capture:
  - state:
  - URL:
  - viewport / geometry:
  - purpose:
- Computer Use details, if used:
  - app / browser / window:
  - allowed actions:
  - sensitive actions not performed:
- runtime or device details, if used:
  - device / OS / app shell:
  - installed build:
  - runtime-specific notes:

## 4. Findings

- ...

## 5. Verdict

Choose one:

- `PASS`
- `PASS WITH RISK`
- `FAIL / REOPEN`
- `BLOCKED`

## 6. Closure question

Use when verdict is `PASS` or `PASS WITH RISK`.

```text
Closure question:
Track:
Lane:
Task/package:

The package is merged and post-merge validation is complete.
Known blockers or residual risks:

Confirm: close this Task/Lane as done, or keep it open with follow-up?
```

If Track-level closure may be implied, ask that separately.

## 7. Next step

- ...
