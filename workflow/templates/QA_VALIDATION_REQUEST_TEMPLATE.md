# QA Validation Request Template

Date: YYYY-MM-DD
Status: draft
Owner: Tech Lead
Executor: QA

## 1. Validation target

- Initiative:
- Track:
- Lane:
- Task or package:
- Branch / PR / commit:
- Environment:
- Validation target:
  - `branch`
  - `preview`
  - `merged main`
  - `deployed main`
  - `production runtime`
  - `real device/runtime`

## 2. Acceptance under test

- ...

## 3. Scope

In scope:

- ...

Out of scope:

- ...

## 4. Required checks or flows

- ...

## 5. Required evidence

- commands:
- logs:
- screenshots or recordings:
- browser/device matrix:
- CI evidence:
- QA surface:
  - `N/A`
  - `Codex in-app browser`
  - `Chrome DevTools MCP`
  - `Playwright`
  - `Computer Use`
  - `manual browser`
  - `real device/runtime`
- build or commit fingerprint:

## 5.1 Computer Use preconditions

Fill only if Computer Use is requested.

- exact app / browser / window:
- account state:
- allowed actions:
- forbidden actions:
- stop conditions:
- sensitive actions requiring explicit approval:

## 6. Known risks or focus areas

- ...

## 7. Stop factors

Stop and return `Blocked` if:

- the target cannot be reached;
- the branch or build does not match the request;
- acceptance criteria are ambiguous;
- required credentials, devices, or data are missing.
- Computer Use preconditions are missing for a signed-in or real GUI flow.
- requested target is deployed/runtime proof but build identity cannot be proven.
