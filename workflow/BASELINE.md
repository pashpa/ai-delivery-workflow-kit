# Workflow Baseline

Status: Active

This kit has one public baseline.

## 1. Baseline intent

The baseline is a real operating model for AI-assisted product delivery.

It is not a lightweight demo and it is not a chat prompt collection.

It is designed for people building products with Codex App or similar coding agents where:

- context windows are limited;
- multiple agent roles may work in parallel;
- important truth must survive across sessions and machines;
- GitHub or another remote may be newer than local state;
- delivery should be reviewable instead of improvised in chat.

## 2. What the baseline includes

- CTO / Program Architect role for workflow ownership and escalation;
- PM role for product truth when product work is needed;
- Tech Lead role for lane planning, task packets, review, QA routing, and merge readiness;
- Developer role for bounded implementation tasks;
- QA role for validation evidence;
- optional Security Auditor role for security findings and risk framing;
- Initiative -> Track -> Lane -> Task hierarchy;
- product-first delivery sequence;
- Foundation Track before broad parallel delivery;
- documentation ownership rules;
- Definition of Ready / Done gates;
- subagent delegation policy;
- browser QA, Computer Use QA, runtime/device validation, and post-merge validation boundaries;
- stop-and-replan runbook;
- git freshness, branch lifecycle, merge discipline, and cleanup rules;
- an explicit model baseline using the strongest practical coding/reasoning model available in the user's environment.

## 3. Non-negotiable model

Use separate agent contexts for separate roles.

Do not collapse the whole delivery process into one all-purpose long-running agent thread.

The point of the workflow is to protect context quality:

- CTO / Program Architect should not carry every implementation detail;
- PM should not own technical implementation;
- TL should not become the default coder for non-trivial implementation;
- Developer agents should receive bounded tasks;
- QA agents should validate specific packages.

## 4. When PM is required

Use PM when product truth is unclear:

- problem framing;
- scope;
- user journey;
- acceptance criteria;
- launch scope;
- copy, pricing, policy, or product behavior.

If the product intent is already documented and the change is bounded, the responsible TL may proceed directly and record the product assumption in the Task packet.

## 5. Default flow

For substantial product work:

1. Product Definition Track
2. Architecture Track
3. Delivery Planning Track
4. Foundation Track
5. Parallel TL Delivery Tracks or Lanes
6. Release Hardening Track

Architecture may come first only when product intent is already clear or the work is purely technical.

## 6. Model baseline

Default execution baseline:

- OpenAI / Codex: strongest available GPT coding/reasoning model, medium reasoning.
- Claude: Sonnet for normal delivery; Opus only for difficult architecture, escalation, or deep review.
- Cursor or other tools: strongest practical coding model available, medium/default reasoning.

The installer or CTO / workflow owner agent should record the actual available baseline explicitly in the installed repo docs.

Individual agents should not silently change the model per task.
