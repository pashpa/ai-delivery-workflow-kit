# Agent Context Rules

Status: Active

This document defines how agent contexts should be separated.

## 1. Core rule

Use separate agent contexts for separate responsibilities.

Do not run product, architecture, TL planning, implementation, QA, review, and release decisions through one endless agent conversation.

## 2. Why

AI context windows are limited.

One overloaded thread causes:

- stale assumptions;
- hidden decisions;
- diluted role focus;
- accidental scope expansion;
- weaker review;
- harder handoff after compression or restart.

The workflow uses documentation and role separation to keep work recoverable.

## 3. Recommended role split

- CTO / Program Architect: workflow, escalation, high-level constraints.
- PM: product truth when product work is unclear.
- Tech Lead: Lane planning, Task packets, Developer launch, QA request, review, merge readiness.
- Developer: bounded implementation Task.
- QA: validation evidence for a defined package.
- Reviewer: factual verdict against acceptance and evidence.
- Security Auditor: security findings and risk framing for sensitive surfaces.

## 4. Human ownership vs agent contexts

One human may own the whole product.

That does not mean one agent context should do all work.

The human can coordinate multiple role-specific agents while keeping each agent's context narrow.

## 5. Allowed direct execution

Direct execution is allowed only for:

- trivial doc edits;
- true micro-fixes;
- workflow-only changes;
- emergency unblock with explicit follow-up.

Non-trivial implementation should use TL-owned task packets and separate Developer or QA agents.

Use `workflow/policies/SUBAGENT_DELEGATION_POLICY.md` for normal delegated
execution rules.

## 6. Handoff rule

If a new agent needs context, create or update a doc or handoff packet.

Do not rely on "read the whole chat" as the source of truth.
