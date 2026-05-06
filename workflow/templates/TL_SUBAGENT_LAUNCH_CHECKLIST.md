# TL Subagent Launch Checklist

Use this before every non-trivial delegated launch.

Purpose:

- do not rely on memory alone;
- reduce workflow drift after long threads or context compression;
- prevent lossy handoffs and silent model drift.

Read with:

- `workflow/policies/SUBAGENT_DELEGATION_POLICY.md`
- `workflow/policies/DEFINITION_OF_READY_AND_DONE.md`

## When it is mandatory

Use this checklist:

- before the first delegated launch on a non-trivial Task;
- before relaunch with a new bounded subtask;
- after context compression;
- after a new session or long pause.

If the checklist is not completed, treat the launch as invalid.

## 1. Canonical Task truth

- Initiative:
- Track:
- Lane:
- Task:
- Canonical task doc:
- Current Task status:
- Packaging mode:
- Definition of Ready passed: `yes / no`

## 2. Execution target

- Delegated role:
- Model:
- Reasoning effort:
  - default for developer execution: `medium`
- Validation target:
  - `branch-only`
  - `preview`
  - `merged main`
  - `deployed main`
  - `production runtime or device`

Rule:

- normal delivery work should not silently downgrade to smaller models;
- default tuning knob is reasoning effort, not model downgrade.

## 3. Execution surface

- Branch:
- Worktree or clean execution surface:
- Current base commit:
- Write scope:
- Allowed adjacent scope:

## 4. Lossless handoff checks

Confirm before launch:

- canonical task doc is linked;
- scope and non-goals match the task doc;
- acceptance is preserved;
- checkpoint package is explicit;
- freshness or sync gate is preserved if needed;
- stop factors are preserved;
- evidence requirements are preserved;
- Computer Use or runtime/device requirements are preserved if relevant.

## 5. Start Ack contract

Require the delegated execution to return at least:

- Initiative, Track, Lane, and Task;
- execution surface;
- current base commit;
- model;
- reasoning effort;
- validation target;
- blockers on start.

## 5.1 Safety / QA boundary

- Browser QA needed:
- Computer Use QA needed:
- Runtime/device proof needed:
- Post-merge validation needed:
- Security audit needed:
- Sensitive or destructive actions explicitly forbidden:

## 6. Launch decision

Choose one:

- `READY TO SPAWN`
- `FIX HANDOFF FIRST`
- `STOP AND REPLAN`
