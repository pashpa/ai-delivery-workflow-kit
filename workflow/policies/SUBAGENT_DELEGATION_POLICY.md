# Subagent Delegation Policy

Status: Active

This policy defines how Tech Leads, PMs, and other supervisors use delegated
agents without turning chat into the source of truth.

## 1. Core principle

Subagents change the execution layer. They do not change the governance layer.

Canonical truth still lives in:

- workflow docs;
- Task, Lane, or Track artifacts;
- code diffs;
- PRs;
- CI and validation evidence;
- factual review verdicts.

For non-trivial implementation work, delegated Developer execution is the normal
path. The Tech Lead remains the supervisor and reviewer.

## 2. Canonical supervisor pattern

The default delivery pattern is:

- Tech Lead supervises;
- Developer subagent executes bounded implementation;
- QA or validation subagent collects evidence when needed;
- reviewer subagent may inspect a package when needed;
- Tech Lead decides accept, retry, replan, or close.

Avoid:

- peer-to-peer orchestration between Developer agents without a Tech Lead;
- multiple code-writing subagents with overlapping write scope;
- subagent summaries as a replacement for Task docs;
- merge or release decisions made by a subagent without owning review.

## 3. PM-side delegation

PM may use subagents for product-layer work:

- research;
- inventory;
- doc sync;
- draft handoff preparation.

PM-side subagents must not:

- write implementation code;
- create a direct PM -> Developer execution path;
- replace PM accountability for product truth;
- bypass the PM -> Tech Lead handoff.

## 4. When delegation is required by default

For non-trivial implementation:

- Tech Lead should not be the default coder;
- Tech Lead should create or point to a canonical Task;
- Developer execution should happen through a bounded owner or subagent.

Direct TL execution is allowed only for:

- true micro-fixes;
- doc-only or workflow-only changes;
- emergency unblock with explicit follow-up;
- tightly coupled fixes where delegation would add more risk than value.

"It is faster if I code it myself" is not enough by itself for a large stage.

## 5. Required before Developer delegation

Before launching a Developer subagent, the Tech Lead must know:

- Initiative, Track, Lane, and Task where applicable;
- canonical Task doc or explicit bounded Task packet;
- outcome;
- scope and non-goals;
- write scope;
- acceptance criteria;
- validation target;
- stop factors;
- branch and execution surface;
- freshness requirements;
- expected checkpoint format.

If these are missing, shape the Task before launching execution.

## 6. Handoff packet

The handoff packet is a compact projection of the canonical Task.

It must not drop:

- acceptance criteria;
- scope and non-goals;
- write scope;
- stop factors;
- validation target;
- evidence requirements;
- freshness or sync gates.

Use:

- `workflow/templates/TL_SUBAGENT_LAUNCH_CHECKLIST.md`
- `workflow/templates/TL_TO_DEVELOPER_SUBAGENT_PACKET_TEMPLATE.md`
- `workflow/templates/SUBAGENT_HANDOFF_TEMPLATE.md`

## 7. Context policy

Pass the smallest sufficient context:

- Task doc;
- relevant product or technical docs;
- current-state summary;
- exact file or module paths;
- expected output.

Do not pass an entire long chat unless the subtask truly depends on that chat.

## 8. Model and reasoning policy

Default execution baseline:

- model: `GPT-5.5`
- reasoning: `medium`

Normal delivery subagents should use the baseline unless the repo explicitly
changes it in workflow docs.

Smaller or mini models are not the normal delivery path. If a team wants to use
them for inventory or simple checks, that exception should be explicit.

Reasoning guidance:

- `low`: inventory, narrow search, mechanical checks;
- `medium`: default implementation, routine refactors, checkpoint preparation;
- `high`: complex debug, risky migration, ambiguous failure;
- `xhigh`: rare architecture or multi-step root-cause work.

## 9. Parallel delegation

Parallel code-writing delegation is allowed only when:

- write scopes are disjoint;
- branches or worktrees are isolated;
- integration owner is known;
- each result can be reviewed separately.

If write scope overlaps, do not run the subagents in parallel unless a Tech Lead
has created an explicit integration plan.

## 10. Start Ack and checkpoint

Delegation does not remove `Start Ack`.

The delegated Developer should first confirm:

- role;
- Task;
- scope;
- write scope;
- stop factors;
- expected output.

The final checkpoint must include:

- changed files;
- what was done;
- what was not done;
- checks run;
- blockers and residual risk;
- recommendation for the Tech Lead.

## 11. Supervisor loop

After a subagent returns, the supervisor must do one of:

1. review and move the stage forward;
2. send a specific follow-up task;
3. stop and return a blocker or replan verdict.

Do not treat "subagent started" or "subagent acknowledged" as meaningful
delivery progress.
