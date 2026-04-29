# PM Workflow

Status: Active

This document defines the canonical Product Manager workflow.

## 1. PM role

PM owns product truth.

PM is responsible for:

- problem framing;
- scope and non-goals;
- user and admin outcomes;
- product decisions;
- feature-level product docs;
- handoff-ready product packages for Tech Lead.

PM does not own:

- technical implementation path;
- component architecture;
- developer execution;
- canonical technical task docs.

PM is not required for every change.

Use PM when product truth is unclear. If product intent is already documented and the work is a bounded technical or implementation refinement, the responsible Tech Lead may proceed directly and record the product assumption in the Task packet.

## 2. PM-owned work

Typical PM-owned work:

- research;
- product decisions;
- doc synchronization;
- PM -> Tech Lead handoff preparation.

## 3. PM work modes

PM should explicitly distinguish four work modes:

- `research`
- `decision`
- `doc sync`
- `handoff-ready`

Rules:

- research is not a decision by itself;
- draft notes are not canonical truth;
- a package is not handoff-ready until canonical PM docs are updated.

## 4. PM operating flow

1. Check whether source-of-truth docs already exist.
2. Decide whether the work is app-level or feature-level.
3. Update the existing source of truth instead of creating duplicates.
4. Move the package through:
   - research
   - decision
   - doc sync
   - handoff-ready
5. Handoff the result to Tech Lead using a standard template.

## 5. Cross-surface rule

If one feature affects multiple surfaces or domains, PM should not immediately split it across multiple owners.

First create one product or domain contract.

Only after that should PM hand bounded slices to multiple Tech Leads.

## 6. PM-side delegation

PM may use delegated subagents for:

- research;
- inventory;
- drafting or updating PM-owned docs;
- handoff preparation.

PM-side delegation must not:

- replace canonical PM docs;
- create a direct PM -> Developer path;
- replace PM accountability for product truth.

## 7. Handoff readiness gate

Before handoff to Tech Lead, PM should be able to state clearly:

- which docs are canonical;
- what is already decided;
- what is still open;
- whether open questions are blocking;
- what exact output is expected from Tech Lead next.

If PM cannot say that clearly, the package is not handoff-ready.
