# Operating Model

Status: Active

This document defines the global operating model for repo-first AI delivery.

## 1. Why this model exists

AI agents have limited context windows.

The workflow must therefore:

- move durable truth into documentation, code, reviewable diffs, and evidence;
- avoid leaving important decisions only in chat;
- split work across role-owned agents so one agent does not carry unrelated context;
- make handoffs explicit enough that a new agent can continue from docs instead of reconstructing history.

## 1.1 Agent context separation

Serious work should use separate agent contexts for separate responsibilities.

Do not collapse CTO / Program Architect, PM, Tech Lead, Developer, QA, review, and release work into one long-running agent thread.

This is not optional process overhead. It is how the workflow protects context quality.

One human may coordinate the whole product, but each agent should still receive role-specific context and bounded work.

Delegated execution should follow
`workflow/policies/SUBAGENT_DELEGATION_POLICY.md`.

## 2. Canonical work hierarchy

New work uses this hierarchy:

1. Initiative
2. Track
3. Lane
4. Task

Definitions:

- Initiative: a business or product outcome large enough to contain multiple tracks.
- Track: a major workstream with a coherent outcome, owner, and closure gate.
- Lane: a TL-owned delivery slice inside a track.
- Task: a bounded execution unit assigned to a Developer, QA agent, or other executor.

Checkpoint and Review are not hierarchy levels by default.

Rules:

- checkpoint evidence belongs inside the owning Task or Lane doc unless it is too large or cross-cutting;
- review verdicts belong inside the owning Task or Lane doc unless a separate review memo is needed;
- if separate checkpoint or review docs are created, they must link back to the owning Task or Lane.

## 3. Product-first delivery sequence

The default sequence for a substantial initiative is:

1. Product Definition Track
2. Architecture Track
3. Delivery Planning Track
4. Foundation Track
5. Parallel TL Delivery Tracks or Lanes
6. Release Hardening Track

This order is intentional.

Product truth should normally come before architecture. Architecture should solve a product problem, not invent one.

Exception:

- if an existing product is already clear enough, Product Definition may be a short audit and doc-sync track;
- if the work is purely technical, the PM role may be skipped and the responsible TL may open the technical track directly;
- if a product change is small and does not need PM work, it may go directly to the responsible TL with the product assumption recorded in the task packet.

## 4. Product change routing

Every product-affecting change must have an explicit route:

- through PM when product discovery, scope, copy, user journey, pricing, policy, or acceptance criteria are unclear;
- directly through the responsible TL when the product intent is already documented and the change is a bounded implementation or technical refinement;
- to CTO / Program Architect only when the change affects cross-track architecture, workflow rules, or a major escalation decision.

Do not route every product detail through CTO.

## 5. Foundation before parallel delivery

Parallel TL delivery should normally begin only after a Foundation Track has created shared rails.

Foundation may include:

- app shell or service shell;
- public contracts and extension points;
- shared data, auth, routing, analytics, or deployment patterns;
- validation and QA rails;
- examples for feature TLs to copy.

The purpose is to prevent late integration collapse.

Release Hardening still exists, but it should validate and stabilize the integrated result. It should not be the first moment when incompatible lane assumptions are discovered.

## 6. Role autonomy

The model assumes autonomous TL lanes.

Tech Leads own:

- lane planning;
- task packets;
- delegated subagents;
- QA requests;
- checkpoint review;
- branch/package readiness.

Tech Leads should use `workflow/policies/DEFINITION_OF_READY_AND_DONE.md` before
launching or closing non-trivial work.

CTO / Program Architect owns:

- workflow rules;
- escalation rules;
- super-high-level architecture constraints;
- cross-track conflict decisions;
- bootstrap of ambiguous initiatives.

CTO / Program Architect should not become the continuous reviewer for every lane.

## 7. Current truth

Every active initiative should make these clear:

- current Initiative;
- active Tracks;
- active Lanes;
- active Tasks;
- canonical docs for each;
- owner for each;
- current branch or package for each active delivery slice;
- next reviewable artifact.

If this cannot be stated from docs, the workflow is not healthy yet.

Use `workflow/policies/DEFINITION_OF_READY_AND_DONE.md` to decide whether the
next handoff is ready and whether the current package can be called done.
