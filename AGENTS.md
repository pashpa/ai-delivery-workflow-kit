# AGENTS.md

This repository is `workflow-first`.

Canonical workflow truth lives in:

- `workflow/core/WORKFLOW_CONSTITUTION.md`
- `workflow/core/PROJECT_WORKFLOW.md`
- `workflow/core/TRACEABILITY_RULES.md`
- `workflow/roles/TECH_LEAD_WORKFLOW.md`
- `workflow/roles/DEVELOPER_WORKFLOW.md`

If chat guidance conflicts with these docs, follow the repo docs unless the user explicitly overrides them.

## Root worktree rule

Treat the repository root as a control plane by default.

Use the root worktree for:

- reading workflow docs;
- checking repo state;
- checking `git status`, branches, worktrees, and PR state;
- creating or removing dedicated worktrees;
- final clean review or merge operations.

Do not use the root worktree as the default execution surface for non-trivial delivery work.

For non-trivial work:

1. create a dedicated branch;
2. create a dedicated worktree for that branch if your repo setup supports worktrees;
3. keep active WIP inside that dedicated execution surface.

If your environment or team does not use worktrees, the same rule still applies conceptually:

- keep one bounded task per clean execution surface;
- do not pile multiple unrelated tracks into one dirty branch.

## Core operating rules

1. Do not use local `main` as the normal execution surface for active work.
2. Do not leave the repo in an unfinished git state:
   - unresolved merge
   - half-finished rebase
   - half-finished cherry-pick
   - staged merge resolution left behind
3. If you start `git merge`, `git rebase`, or `git cherry-pick`, finish or abort it in the same work cycle.
4. Do not leave unrelated local changes in a feature branch.
5. Do not mix multiple tracks in one package unless that package is explicitly meant to normalize or consolidate already-related work.

## Parallel work discipline

Assume parallel delivery exists or will exist.

Because of that:

1. assume another branch may merge while you are working;
2. before resuming a stage after relevant merges, run the repo's freshness or rebase gate;
3. keep branch truth isolated:
   - one bounded task per branch/package
   - one execution surface per active task
4. if a branch accumulates unrelated changes, stop and classify them:
   - already merged
   - still needed and package-worthy
   - obsolete

## Required git hygiene

Before handoff, review, or branch switching:

1. understand `git status`;
2. ensure tracked WIP is either:
   - committed for the current task
   - intentionally staged for the current task
   - explicitly discarded
3. resolve or abort merge state before doing anything else;
4. do not leave misleading untracked artifacts around if they can confuse branch/package truth.

## Packaging truth

Do not confuse:

- `local-accepted`
- `review-package-ready`
- `merged`
- `track-closed`

Rules:

1. a local checkpoint is not `merged`;
2. a merged PR is not automatically `track-closed`;
3. track closure requires an explicit closure decision, not just a merged diff;
4. if the packaging strategy is unclear, stop and define it before work spreads across branches.

## Browser QA

Browser QA is evidence work, not casual eyeballing.

1. Prefer documented QA flows and prompt templates.
2. Use dedicated automation browsers or isolated automation profiles when possible.
3. Do not use a user's ordinary browser profile as the default automation surface.
4. If one browser automation path fails, use the repo's documented fallback instead of silently dropping QA.

## Test and process discipline

1. Do not launch the same local test command repeatedly while a previous identical run is still alive.
2. Prefer the narrowest validation target that can prove the change.
3. Long-lived processes require ownership:
   - watch mode
   - dev servers
   - browser sessions
   - MCP transports
4. If a task-scoped process is no longer needed, stop it in the same work cycle.
5. Before retrying a hung validation run, check whether an earlier identical run is still consuming resources.

## When in doubt

If the repo is dirty and you are unsure whether a change belongs to your task:

1. stop;
2. inspect `git status` and `git diff`;
3. classify the change;
4. continue only after branch truth is understood.

Do not leave cleanup for "later".
