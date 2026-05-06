# Runtime and Device Validation Policy

Status: Active

This policy defines when browser QA is enough and when runtime, device, or real
GUI evidence is required.

## 1. Base rule

Use the narrowest validation surface that proves the acceptance target.

Browser QA is important for UI work, but it is not automatically runtime proof.

## 2. Validation levels

### Level A. Engineering checks

Use for code-level correctness:

- lint;
- typecheck;
- unit tests;
- integration tests;
- CI.

### Level B. Browser QA

Use for local or browser-level UI evidence:

- layout;
- states;
- responsive behavior;
- screenshots;
- console and network findings;
- browser surface explicitly named.

Default local interactive surface in Codex App:

- Codex in-app browser / Browser Use.

Deterministic or fallback surfaces:

- Playwright;
- Chrome DevTools MCP;
- test suites.

### Level B2. Computer Use QA

Use for real GUI flows where browser-level automation is insufficient:

- signed-in real browser flows;
- desktop app flows;
- provider/admin/payment UI flows;
- flows that depend on the user's active GUI session;
- realistic release checks that need visual interaction with a real app window.

Computer Use requires the safety rules in
`workflow/guides/COMPUTER_USE_QA_WORKFLOW.md`.

### Level C. Runtime or device QA

Use when the runtime itself is the acceptance target:

- mobile device;
- installed PWA;
- WebView;
- native wrapper;
- browser extension;
- OS-specific behavior;
- safe area, viewport, or platform chrome behavior.

## 3. When browser QA is enough

Browser QA may be enough when the change:

- is browser-only;
- does not depend on signed-in state that cannot be reproduced in the test
  surface;
- does not depend on device chrome, OS behavior, WebView, or installed app
  behavior;
- has screenshots and console/network evidence for the relevant states.

## 4. When runtime or device proof is required

Runtime or device proof is required when acceptance mentions:

- production runtime;
- installed app behavior;
- mobile shell behavior;
- WebView behavior;
- real provider flow;
- auth or payment flow that depends on real browser/session state;
- historically fragile runtime behavior.

## 5. Evidence requirements

Validation reports must name:

- environment;
- branch, PR, commit, or build under test;
- browser, app, device, or runtime surface;
- account state when relevant;
- checked flows;
- what was not checked;
- screenshots, logs, traces, or recordings when relevant;
- residual risk.

## 6. If runtime proof is unavailable

If required runtime proof cannot be collected:

- state that explicitly;
- mark the result `Pass with risk` or `Blocked`;
- assign owner and unblock path;
- do not present browser-only evidence as runtime proof.

## 7. Related docs

- `workflow/guides/FRONTEND_QA_WITH_CODEX_BROWSER.md`
- `workflow/guides/COMPUTER_USE_QA_WORKFLOW.md`
- `workflow/templates/POST_MERGE_VALIDATION_TEMPLATE.md`
