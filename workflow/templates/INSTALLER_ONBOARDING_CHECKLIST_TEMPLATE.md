# Installer Onboarding Checklist

Status: active
Owner: Workflow Installer / Onboarding Agent
Updated: YYYY-MM-DD
Target repo:

This checklist tracks workflow installation and human onboarding progress.

It should be updated locally by the installer agent after each onboarding phase.

## 1. Phase status

Allowed statuses:

- `not-started`
- `in-progress`
- `blocked`
- `done`

| Phase | Status | Evidence / output | Next action |
| --- | --- | --- | --- |
| 0. Start contract | not-started |  |  |
| 1. Repo inspection | not-started |  |  |
| 2. Workflow installation | not-started |  |  |
| 3. Beginner explanation | not-started |  |  |
| 4. Missing facts loop | not-started |  |  |
| 5. Durable context write | not-started |  |  |
| 6. First route selection | not-started |  |  |
| 7. Starter pack and stop | not-started |  |  |

## 2. Installation state

- Source kit fetched once by clone/archive:
- Full `workflow/` tree copied:
- Root `AGENTS.md` installed or updated:
- `CURRENT_WORK.md` installed or updated:
- `PROJECT_CONTEXT.md` installed or updated:
- Manifest integrity check passed:
- Repo-specific adaptations recorded:
- Slow raw-fetch/manual rewrite path avoided:

## 3. Repo facts inferred without asking the human

- Repo type:
- Primary language/framework:
- Package manager:
- Build command:
- Test command:
- Lint/typecheck command:
- Run/dev command:
- Existing docs:
- Existing product truth:
- Deployment/package signals:
- Current git branch/status:

## 4. Human answers captured

Ask at most three questions per message. Do not ask what the repo already answers.

| Question | Answer | Recorded in project context |
| --- | --- | --- |
|  |  |  |

## 5. Open onboarding questions

Only keep questions that affect route selection or safe workflow operation.

- TBD

## 6. First route decision

Choose exactly one:

- `PM-first`
- `TL-first`
- `CTO-needed`
- `direct-micro-task`

Selected route:

Reason:

Next role agent:

## 7. Starter pack readiness

- Files changed listed:
- Workflow mental model summarized:
- Role split summarized:
- Core glossary summarized:
- Project context summarized:
- Next-agent prompt prepared:
- Later role prompts prepared if useful:
- Product implementation explicitly not started:

## 8. Blockers

- TBD
