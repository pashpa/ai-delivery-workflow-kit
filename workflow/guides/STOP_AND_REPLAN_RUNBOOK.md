# Runbook: Stop and Replan

Status: Active

Use this runbook when the current delivery path is no longer rational.

## 1. When to use it

Stop and replan when:

- repeated fixes do not improve the result;
- the issue appears systemic, not local;
- scope or architecture was wrong;
- product, design, runtime, or technical truth conflict;
- the current path creates more risk than progress.

## 2. Who can trigger it

- Tech Lead can trigger it for delivery and technical paths.
- PM can trigger it when product truth is wrong or incomplete.
- Developer can recommend it when evidence shows the current Task cannot work.
- CTO / Program Architect can trigger it for cross-track or workflow failures.

The owning Tech Lead or CTO records the final path decision.

## 3. Minimum inputs

Before replanning, collect:

- what was attempted;
- which docs were used;
- branches, PRs, commits, experiments, or checkpoints involved;
- observed symptoms;
- why ordinary fixes are not enough;
- risk of continuing the old path.

## 4. What the owner does

1. Stop further execution on the old path.
2. Record verdict: `Stop and replan`.
3. Classify the problem:
   - product;
   - design;
   - architecture;
   - runtime;
   - component or platform;
   - workflow.
4. Create the new canonical path.
5. Mark old plans as `superseded` or `historical`.
6. Assign the next Task or investigation.

## 5. Required doc updates

Update:

- current work index;
- old Task, Lane, or Track status;
- new Task, Lane, or Track plan;
- related review or checkpoint notes;
- docs that contain now-invalid assumptions.

## 6. What not to do

Do not:

- continue the old path while pretending a replan happened;
- keep two active paths without an explicit owner decision;
- replan only in chat;
- delete old evidence without marking why it is no longer current.

## 7. Exit condition

The runbook is complete when:

- old path is stopped;
- new path is documented;
- owner and next step are clear;
- participants know which doc is current.
