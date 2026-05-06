# Install Workflow Into A Repo

This guide explains how to install this workflow kit into another repository.

## Goal

After installation, the target repo should have:

- canonical workflow docs;
- role docs;
- templates;
- root `AGENTS.md` wired to the workflow;
- `CURRENT_WORK.md` or an equivalent current work index;
- one explicit canonical workflow baseline;
- when onboarding is requested, a local onboarding checklist and durable project context.

## 1. Inspect the target repo first

Before copying anything, inspect:

- repo size and shape;
- whether it is app, service, library, or mixed;
- whether one human will coordinate several agent roles or several humans/agents will work in parallel;
- whether the repo already has any workflow docs;
- whether the repo already uses worktrees, PR packages, and role separation.

Do not blindly install the same amount of process everywhere.

If onboarding is requested, do not ask broad product questions before this inspection. First infer what the repo already answers.

## 2. Use the fast install path

Follow:

- `install/INSTALL_MANIFEST.md`

Mandatory method:

1. Fetch the kit once by `git clone --depth 1` or GitHub archive.
2. Copy the full `workflow/` directory into the target repo.
3. Create target root files from templates.
4. Adapt only repo-specific root/context files unless a copied workflow doc truly needs a repo-specific exception.

Do not:

- fetch raw GitHub URLs one file at a time;
- reconstruct canonical docs with patches or editor writes;
- install a manually distilled subset;
- copy source root `README.md`, `QUICKSTART.md`, or `AGENTS.md` as target product-repo files;
- create a submodule unless the human explicitly asks for it.

If clone/archive/copy is blocked, stop and ask the human for a local kit path or permission. Do not continue through hand reconstruction.

## 3. Choose the workflow baseline

This kit installs one canonical workflow baseline.

Use it even in smaller repos.

Reason:

- the workflow loses too much safety when launch discipline and delegated-execution rules are stripped out;
- the public kit is meant to install a real operating model, not a demo version of one.

## 4. Minimum files to install

Install:

- `workflow/BASELINE.md`
- `workflow/core/WORKFLOW_CONSTITUTION.md`
- `workflow/core/AGENT_CONTEXT_RULES.md`
- `workflow/core/OPERATING_MODEL.md`
- `workflow/core/PROJECT_WORKFLOW.md`
- `workflow/core/TRACEABILITY_RULES.md`
- `workflow/core/DOCUMENTATION_OWNERSHIP.md`
- `workflow/core/GIT_OPERATIONS.md`
- `workflow/core/GIT_COOKBOOK.md`
- `workflow/policies/DEFINITION_OF_READY_AND_DONE.md`
- `workflow/policies/SUBAGENT_DELEGATION_POLICY.md`
- `workflow/policies/RUNTIME_DEVICE_VALIDATION_POLICY.md`
- `workflow/policies/DOCUMENT_HYGIENE_POLICY.md`
- `workflow/guides/FRONTEND_QA_WITH_CODEX_BROWSER.md`
- `workflow/guides/COMPUTER_USE_QA_WORKFLOW.md`
- `workflow/guides/STOP_AND_REPLAN_RUNBOOK.md`
- `workflow/roles/CTO_WORKFLOW.md`
- `workflow/roles/PM_WORKFLOW.md`
- `workflow/roles/PM_ONBOARDING.md`
- `workflow/roles/TECH_LEAD_WORKFLOW.md`
- `workflow/roles/TECH_LEAD_ONBOARDING.md`
- `workflow/roles/DEVELOPER_WORKFLOW.md`
- `workflow/roles/DEVELOPER_ONBOARDING.md`
- `workflow/roles/QA_WORKFLOW.md`
- `workflow/roles/SECURITY_AUDITOR_WORKFLOW.md` when the repo has security-sensitive surfaces
- `workflow/prompts/PROMPT_BROWSER_QA_AGENT.md` when the repo has UI work
- `workflow/templates/DEV_TASK_TEMPLATE.md`
- `workflow/templates/TRACK_PLAN_TEMPLATE.md`
- `workflow/templates/LANE_PLAN_TEMPLATE.md`
- `workflow/templates/INVESTIGATION_TASK_TEMPLATE.md`
- `workflow/templates/START_ACK_TEMPLATE.md`
- `workflow/templates/DEVELOPER_CHECKPOINT_TEMPLATE.md`
- `workflow/templates/QA_VALIDATION_REQUEST_TEMPLATE.md`
- `workflow/templates/QA_CHECKPOINT_TEMPLATE.md`
- `workflow/templates/TECH_LEAD_REVIEW_TEMPLATE.md`
- `workflow/templates/ROOT_AGENTS_TEMPLATE.md`
- `workflow/templates/CURRENT_WORK_TEMPLATE.md`
- `workflow/templates/PM_LAUNCH_CHECKLIST.md`
- `workflow/templates/PM_TO_TECH_LEAD_HANDOFF_TEMPLATE.md`
- `workflow/templates/CTO_TO_TL_HANDOFF_TEMPLATE.md`
- `workflow/templates/PM_SUBAGENT_HANDOFF_TEMPLATE.md`
- `workflow/templates/SUBAGENT_HANDOFF_TEMPLATE.md`
- `workflow/templates/TL_SUBAGENT_LAUNCH_CHECKLIST.md`
- `workflow/templates/TL_TO_DEVELOPER_SUBAGENT_PACKET_TEMPLATE.md`
- `workflow/templates/POST_MERGE_VALIDATION_TEMPLATE.md`
- `workflow/templates/SECURITY_AUDIT_MEMO_TEMPLATE.md` when the security auditor role is installed
- `workflow/templates/INSTALLER_ONBOARDING_CHECKLIST_TEMPLATE.md`
- `workflow/templates/PROJECT_CONTEXT_TEMPLATE.md`
- root `AGENTS.md`
- root `CURRENT_WORK.md`
- root `PROJECT_CONTEXT.md` when onboarding is requested
- `workflow/onboarding/INSTALLER_ONBOARDING_CHECKLIST.md` when onboarding is requested

The fastest valid way to install these is still to copy the full `workflow/` tree first, then create target root files from templates.

## 5. Adapt the wording to the target repo

Do not keep this kit as a foreign object.

Adapt:

- repo paths;
- branch naming if needed;
- language tone if needed;
- role names if the target team uses different naming;
- any references to worktrees if the target setup does not use them.

## 6. Rewrite root AGENTS.md

The target repo root `AGENTS.md` should:

- point to the installed workflow docs;
- require separate agent contexts by role;
- state the actual model and reasoning baseline for the user's environment;
- define root execution-surface rules;
- define the freshness gate;
- define git hygiene and packaging truth;
- define any repo-specific QA or runtime rules;
- define how Codex in-app browser, Playwright, Chrome DevTools MCP, Computer Use, and real device/runtime validation should be used for this repo.

## 7. Define the repo baseline explicitly

When installation finishes, the target repo should make these things explicit:

- installed workflow baseline;
- default branch expectations;
- canonical Initiative -> Track -> Lane -> Task hierarchy;
- separate agent context rule;
- whether dedicated worktrees are required or only recommended;
- actual default model and reasoning baseline for the user's environment;
- whether PM is always required or only used when product truth is unclear;
- browser QA expectations if UI work exists.
- whether Computer Use QA or real device/runtime validation is needed for signed-in, provider, payment, native, mobile, or installed-app flows.

Preferred model defaults:

- Codex / OpenAI: strongest available GPT coding/reasoning model, medium reasoning.
- Claude: Sonnet for normal delivery; Opus only for difficult architecture, escalation, or deep review.
- Cursor or other tools: strongest practical coding model available, medium/default reasoning.

## 8. Do not over-install

Do not install workflow text mechanically without adapting it to the target repo.

Examples:

- do not keep wording about worktrees if the target repo cannot or will not use them;
- do not keep browser QA expectations in a backend-only service unless they are truly needed;
- do not keep Computer Use or device-validation rules unless the repo has GUI/runtime flows that need them;
- do not rename role labels without preserving the separate agent responsibilities.

Do not confuse this with manual file selection. Copy the full `workflow/` tree first, then decide which rules are active in target root `AGENTS.md` and `PROJECT_CONTEXT.md`.

## 9. Final installation output

The installation should end with:

- a concise summary of what was installed;
- what was intentionally skipped;
- what still requires manual repo-specific decisions.

## 10. Onboarding output

If the user asked for onboarding, continue after installation and follow:

- `install/INSTALLER_ONBOARDING_PROTOCOL.md`

The installer must:

- create and update `workflow/onboarding/INSTALLER_ONBOARDING_CHECKLIST.md`;
- explain the workflow in beginner-friendly language;
- explain that role names are separate agent contexts, not fake team bureaucracy;
- ask at most three human questions at a time;
- ask only for missing facts after repo inspection;
- write durable context into `PROJECT_CONTEXT.md` or the repo's equivalent;
- update `CURRENT_WORK.md`;
- select exactly one first route:
  - `PM-first`
  - `TL-first`
  - `CTO-needed`
  - `direct-micro-task`
- provide the next role agent prompt;
- stop before product implementation.

If the human tries to redirect the installer into coding, the installer should record the request as future work, explain that implementation starts after onboarding and route selection, and return to the onboarding phase.
