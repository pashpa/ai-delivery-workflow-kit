# TL Subagent Launch Checklist

Use this before every non-trivial delegated launch.

Purpose:

- do not rely on memory alone;
- reduce workflow drift after long threads or context compression;
- prevent lossy handoffs and silent model drift.

## When it is mandatory

Use this checklist:

- before the first delegated launch on a non-trivial stage;
- before relaunch with a new bounded subtask;
- after context compression;
- after a new session or long pause.

If the checklist is not completed, treat the launch as invalid.

## 1. Canonical stage truth

- Track or feature / stage:
- Canonical task doc:
- Current stage status:
- Packaging mode:

## 2. Execution target

- Delegated role:
- Model: `GPT-5.5`
- Reasoning effort:
  - default for developer execution: `medium`
- Validation target:
  - `branch-only`
  - `preview`
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
- evidence requirements are preserved.

## 5. Start Ack contract

Require the delegated execution to return at least:

- track or feature / stage;
- execution surface;
- current base commit;
- `model = GPT-5.5`
- reasoning effort;
- validation target;
- blockers on start.

## 6. Launch decision

Choose one:

- `READY TO SPAWN`
- `FIX HANDOFF FIRST`
- `STOP AND REPLAN`
