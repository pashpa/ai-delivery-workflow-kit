# Documentation Ownership

Status: Active

This document defines what each role must leave behind as durable repo truth.

## 1. Documentation principle

Every agent output must become one of:

- a source-of-truth document update;
- a task or lane artifact;
- a code diff;
- a reviewable checkpoint;
- validation evidence;
- an explicit escalation or decision record.

Important decisions should not remain only in chat.

Use `workflow/policies/DOCUMENT_HYGIENE_POLICY.md` for status, placement,
naming, superseded docs, and archive rules.

## 2. CTO / Program Architect outputs

CTO / Program Architect owns:

- workflow rules and repo operating model;
- role boundaries and escalation rules;
- Initiative-level constraints;
- cross-track architecture constraints;
- decision records for major tradeoffs;
- CTO -> TL handoffs when bootstrapping ambiguous initiatives.

CTO / Program Architect does not own:

- every lane plan;
- every task packet;
- every developer checkpoint;
- routine merge readiness for TL-owned branches.

## 3. PM outputs

PM owns product truth.

Typical PM outputs:

- product brief or product spec;
- scope and non-goals;
- user journeys;
- acceptance criteria;
- launch scope;
- PM -> TL handoff.

If product work is unnecessary because the product intent is already documented, the task should record that assumption instead of creating fake PM work.

## 4. Architecture TL outputs

Architecture TL owns architecture truth for the assigned track.

Typical outputs:

- current-state audit;
- target architecture note;
- reuse or build decisions;
- public contracts or contract gaps;
- risk and open-decision register;
- handoff-ready architecture package for planning or foundation work.

Architecture TL should avoid becoming the delivery TL for every future lane unless explicitly assigned.

## 5. Foundation TL outputs

Foundation TL owns shared implementation rails.

Typical outputs:

- foundation plan;
- shared contracts;
- app or service shell decisions;
- extension points;
- validation rails;
- examples and conventions for later TL lanes;
- merge-ready foundation package.

## 6. Feature or Lane TL outputs

Lane TL owns delivery truth for one lane.

Typical outputs:

- lane plan;
- task packets;
- Developer or QA handoffs;
- checkpoint reviews;
- lane-level risk register when needed;
- branch/package readiness note;
- merge decision or merge recommendation.

## 7. Developer outputs

Developer owns execution evidence for a task.

Typical outputs:

- code or doc diff;
- checkpoint;
- changed files list;
- checks run;
- CI or runtime evidence when relevant;
- open blockers and next-step recommendation.

## 8. QA outputs

QA agent owns validation evidence.

Typical outputs:

- test plan or validation checklist;
- commands and environments used;
- pass/fail results;
- screenshots, recordings, logs, or device/browser evidence when relevant;
- residual risk and retest recommendation.

## 9. Security Auditor outputs

Security Auditor owns security findings and risk framing.

Typical outputs:

- security audit memo;
- findings with severity;
- affected surfaces and evidence;
- recommended remediation;
- open uncertainties;
- verification recommendation.

Security Auditor should not silently become the implementer for the same fix.

## 10. Reviewer outputs

Reviewer owns factual review verdict.

Typical outputs:

- accepted/rejected status;
- evidence reviewed;
- defects found;
- follow-up requirements;
- whether the package can move toward merge or closure.

Review by impression is not enough.
