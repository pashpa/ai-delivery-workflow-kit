# Developer Workflow

Status: Active

This document defines how the Developer role takes a Task and what it must return at checkpoint.

The Developer role may be performed by:

- a human developer;
- a delegated implementation subagent.

## 1. What the Developer starts from

Developer should start from a canonical task document, not from chat alone.

The handoff should also include:

- related docs;
- scope;
- non-goals;
- acceptance criteria;
- stop factors;
- validation target.

## 2. Start Ack is required

Before coding starts, the Developer should return a short `Start Ack`.

Minimum `Start Ack`:

- Initiative, Track, Lane, and Task understood when applicable;
- execution surface identified;
- base branch or base commit understood;
- scope and non-goals understood;
- acceptance understood;
- checkpoint package understood;
- blockers on start: `none` or explicit.

Without `Start Ack`, the Task should not be treated as truly started.

Canonical format:

- `workflow/templates/START_ACK_TEMPLATE.md`

## 3. When the Developer can proceed autonomously

Developer may proceed autonomously if:

- work stays inside the current path;
- scope is not expanded;
- contracts, auth, schema, and runtime model are not silently changed;
- acceptance can be closed inside the current task.

## 4. When the Developer must stop

Developer must return to Tech Lead if:

- scope needs expansion;
- auth, schema, contracts, or runtime model need to change;
- acceptance cannot be closed with the current approach;
- a new architecture branch appears;
- the current path clearly does not work;
- required evidence depends on an external path that is not defined.

## 5. Process discipline

Developer must control both diff and execution processes.

Rules:

- do not stack identical test runs without understanding the previous run;
- prefer the narrowest sufficient validation target;
- keep track of dev servers, browser sessions, and long-lived tooling;
- stop task-scoped processes when no longer needed.

## 6. What the Developer must return

Minimum checkpoint package:

- what changed;
- current branch or package;
- what was in scope;
- what was intentionally not touched;
- acceptance status;
- checks run;
- CI status if applicable;
- runtime evidence if applicable;
- open blockers and next-step recommendation.

Investigation Tasks must also state:

- whether the issue was reproduced;
- which hypothesis was tested;
- whether root cause was proven;
- whether a fix path was identified.
