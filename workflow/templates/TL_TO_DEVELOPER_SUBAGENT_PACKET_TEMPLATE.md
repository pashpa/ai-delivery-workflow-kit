# TL To Developer Subagent Packet Template

Use this for normal delegated developer launches.

## 1. Stage truth

- Track or feature / stage:
- Canonical task doc:
- Current status:

## 2. Execution mode

- Role: `developer`
- Model: `GPT-5.5`
- Reasoning: `medium`
- Validation target:

## 3. Execution surface

- Branch:
- Worktree or clean execution surface:
- Current base commit:

## 4. Context

Short context:

- what already exists;
- why this stage is canonical;
- what must not be lost.

Supporting docs:

- ...
- ...

## 5. Task

- Narrow goal of this delegated execution:

## 6. Scope / non-goals

- In scope:
- Out of scope:

## 7. Write scope

- Primary write scope:
- Allowed adjacent scope:

## 8. Workflow rules

- Work strictly to the canonical task doc.
- Do not expand scope.
- If a stop factor is hit, return a blocker instead of improvising a new path.
- `Start Ack` first.
- Reviewable checkpoint second.

## 9. Required back

- `Start Ack`
- touched files
- what was done / not done / blocked
- checks run
- blockers / risks

## Rule

This packet is shorter than the full task doc, but it must not drop:

- acceptance;
- freshness rules;
- stop factors;
- validation target.
