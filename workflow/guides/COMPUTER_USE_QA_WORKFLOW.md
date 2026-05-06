# Computer Use QA Workflow

Status: Active

This guide defines when QA may use Codex Computer Use and how to keep that mode
safe and auditable.

Computer Use is for real GUI flows where browser-level automation or the in-app
browser is insufficient.

Examples:

- signed-in pages that require a real browser profile;
- desktop apps;
- mobile simulator or native GUI flows;
- provider, admin, or payment UIs;
- bugs that reproduce only through a graphical interface;
- realistic release QA where the actual visible app matters.

For ordinary local frontend pages, use
`workflow/guides/FRONTEND_QA_WITH_CODEX_BROWSER.md` first.

## 1. Tool selection

Use the minimum sufficient QA surface:

1. Codex in-app browser / Browser Use:
   - local dev server;
   - file preview;
   - public unauthenticated page;
   - fast visual iteration.
2. Playwright or Chrome DevTools MCP:
   - deterministic browser checks;
   - scripted screenshots;
   - console or network inspection;
   - repeatable regression checks.
3. Computer Use:
   - signed-in real browser flow;
   - real desktop/browser GUI flow;
   - app/provider UI without a structured integration;
   - realistic release QA pass.
4. Real device/runtime validation:
   - installed app;
   - WebView;
   - native wrapper;
   - mobile safe area or device-specific behavior.

Computer Use is not the default local frontend QA path.

## 2. Preconditions

Before Computer Use starts, the request must define:

- environment;
- exact app, browser, or window to use;
- branch, PR, commit, or deployed build under test;
- account state;
- flows to test;
- allowed actions;
- forbidden actions;
- stop conditions;
- required report format.

If these are missing, return:

```text
Blocked: missing Computer Use QA preconditions
```

## 3. Safety rules

Computer Use can interact with real apps and real signed-in sessions.

Rules:

- keep one target app or flow per task;
- prefer test or staging accounts;
- keep unrelated sensitive apps closed;
- do not paste or reveal secrets in reports;
- do not perform destructive admin, payment, account, privacy, or security
  actions without explicit approval for that exact action;
- if using a user's browser, treat every click and form submission as an action
  from the user's account;
- stop if the agent starts interacting with the wrong window;
- do not use Computer Use to bypass sandbox, approval, or product policy;
- prefer structured APIs, tests, or MCP integrations when they exist.

## 4. Evidence rules

Computer Use reports must include:

- QA surface: `Computer Use`;
- app, browser, or window used;
- environment and URL or path;
- branch, PR, commit, or build fingerprint;
- account state used;
- flows tested;
- what was not tested;
- screenshots, recordings, or notes when available;
- findings with repro steps, expected result, actual result, and severity;
- sensitive actions not performed;
- residual risk;
- retest recommendation.

Computer Use is GUI/runtime evidence. It is not automatically deterministic
regression evidence. If repeatability matters, add tests, Playwright, or CI.

## 5. Boundary with post-merge validation

Computer Use can support post-merge validation only when the target is a real GUI
flow.

The report must still prove:

- the tested build is the merged or deployed build;
- the target environment is the requested one;
- the flow was run after deployment or merge, not on a stale tab.

If build identity cannot be proven, use `Pass with risk` or `Blocked`.

## 6. Related docs

- `workflow/guides/FRONTEND_QA_WITH_CODEX_BROWSER.md`
- `workflow/policies/RUNTIME_DEVICE_VALIDATION_POLICY.md`
- `workflow/templates/POST_MERGE_VALIDATION_TEMPLATE.md`

Official Codex product docs to re-check when this guide changes:

- `https://developers.openai.com/codex/app/browser`
- `https://developers.openai.com/codex/app/computer-use`
- `https://developers.openai.com/codex/use-cases/qa-your-app-with-computer-use`
