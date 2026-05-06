# Frontend QA With Codex Browser

Status: Active

This guide defines browser-level QA for frontend and UI tasks.

Codex in-app browser / Browser Use is the default interactive visual QA surface
for local frontend work in Codex App. Playwright and Chrome DevTools MCP remain
deterministic or fallback surfaces.

Computer Use is a separate QA mode for signed-in or real GUI flows. Use
`workflow/guides/COMPUTER_USE_QA_WORKFLOW.md` for those cases.

## 1. Why this exists

Frontend work should not be handed off with only "tests passed" or "looks fine".

Before checkpoint, the executor should:

- open the actual page or flow;
- verify layout, states, and relevant responsive behavior;
- check console and network findings introduced by the change;
- capture screenshots as visual evidence;
- return a structured browser-QA verdict.

## 2. When this applies

Use browser QA for:

- user-facing UI;
- admin or operator UI;
- layout, spacing, and responsive changes;
- shell or navigation changes;
- visual polish;
- post-merge deployed visual checks when required.

Backend-only, docs-only, and pure data changes do not need browser QA unless
they affect a visible surface.

## 3. Surface selection

Use the minimum sufficient surface:

1. Codex in-app browser / Browser Use for local dev servers, file previews, and
   public unauthenticated pages.
2. Chrome DevTools MCP when DevTools-specific inspection is required.
3. Playwright when repeatable scripted checks or fallback browser automation are
   required.
4. Computer Use only when the task explicitly needs real GUI or signed-in flow
   QA.
5. Manual browser only when automation is unavailable and the limitation is
   recorded.

Always name the surface used in the report.

Codex in-app browser is not the right surface for flows that require a user's
ordinary browser profile, existing cookies, browser extensions, private tabs, or
already-open user windows. Use Computer Use with explicit safety boundaries for
those flows.

## 4. Preconditions

Before browser QA starts, the request should define:

- app or package;
- URL or route;
- page or flow under review;
- scope of the change;
- required states;
- viewport widths or geometry;
- visual target if one exists;
- required evidence format.

If these are missing, return a `Blocked` or `Missing preconditions` note instead
of guessing acceptance.

## 5. What to check

Minimum checks:

- page layout;
- spacing and alignment;
- typography scale;
- loading, empty, error, locked, or task-specific states;
- responsive behavior for required sizes;
- horizontal overflow;
- clipped text;
- broken controls;
- introduced console errors or warnings;
- relevant failed network requests.

If there is a visual target, compare against it explicitly and separate accepted
adaptation from visual drift.

## 6. Screenshot rules

Screenshots should include:

- path or inline capture;
- browser surface;
- URL;
- viewport width and height or geometry preset;
- state name;
- purpose.

Do not attach screenshots without explaining what they prove.

Do not present branch or preview screenshots as deployed proof.

Do not present browser screenshots as real device, installed app, WebView, or
production runtime proof.

## 7. Report format

Use this structure:

- checked URL:
- browser surface:
- environment:
- branch / PR / commit / build:
- checked states:
- checked widths or geometry:
- screenshots:
- console findings:
- network findings:
- visual findings:
- runtime or device proof status:
- verdict:
  - `PASS`
  - `PASS WITH ISSUES`
  - `FAIL`
  - `BLOCKED`
- follow-up actions:

## 8. Tech Lead acceptance

Tech Lead should not accept UI work based on "looks fine".

Before acceptance, confirm:

- report exists;
- screenshots have purpose;
- browser surface is named;
- required states were checked;
- viewport or geometry matches the task;
- console/network findings are understood;
- runtime or device boundary is honest;
- follow-up is either closed or explicitly tracked.

If the task requires deployed or runtime proof, branch-local browser QA does not
close that requirement.

## 9. Related docs

- `workflow/policies/RUNTIME_DEVICE_VALIDATION_POLICY.md`
- `workflow/guides/COMPUTER_USE_QA_WORKFLOW.md`
- `workflow/prompts/PROMPT_BROWSER_QA_AGENT.md`
- `workflow/templates/QA_VALIDATION_REQUEST_TEMPLATE.md`
