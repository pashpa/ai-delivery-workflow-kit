# Definition of Ready and Definition of Done

Status: Active

This policy defines minimum gates for starting and closing delivery work.

The goal is simple:

- do not send unclear work into implementation;
- do not call work done without reviewable evidence.

## 1. General Definition of Ready

A Task, Lane, or package is ready for delivery only when:

- the canonical doc set is known;
- the expected outcome is clear;
- scope and non-goals are explicit;
- acceptance criteria are written down;
- owner and execution mode are known;
- current Initiative, Track, Lane, and Task are identified when applicable;
- blocking product or architecture uncertainty has been resolved or explicitly
  routed;
- the target branch, base, and execution surface are known for non-trivial work;
- the freshness gate has been run when relevant remote work may have landed;
- required `Start Ack` expectations are known before delegated execution starts.

If these are missing, the correct outcome is not "try anyway". The correct
outcome is to finish shaping the work first.

## 2. General Definition of Done

Work is done only when:

- agreed scope is implemented and no silent extra scope was added;
- acceptance criteria are checked;
- reviewable artifacts exist;
- checks, CI, QA, screenshots, logs, or runtime evidence exist where relevant;
- Tech Lead or owning reviewer has issued a factual verdict;
- documentation that changed as a result of the work is updated;
- follow-up items are listed explicitly;
- next step or closure status is clear.

## 3. UI / frontend Definition of Ready

UI work is ready only when:

- the user-facing or operator-facing surface is named;
- expected states are listed;
- design truth or visual expectation is known;
- responsive, runtime, or device expectations are explicit;
- required QA surface is known;
- screenshots or visual evidence requirements are clear;
- branch-local, deployed, and runtime proof expectations are not confused.

## 4. UI / frontend Definition of Done

UI work is done only when:

- changed screens or components match the accepted visual target or documented
  product intent;
- required states were checked;
- required browser QA was performed or explicitly marked not applicable;
- screenshots have URL, state, viewport or geometry, surface, and purpose;
- console and network findings introduced by the change are reviewed;
- runtime or device proof is provided when acceptance requires it;
- any missing runtime proof is called out as residual risk, not hidden.

Browser screenshots do not automatically prove real device, installed app,
WebView, production, or signed-in runtime behavior.

## 5. Review-package-ready Definition of Done

A package can be called `review-package-ready` only when:

- a clean branch, PR, commit, or equivalent diff package exists;
- package scope matches the Task or Lane;
- unrelated work is not mixed into the package;
- CI or allowed external blocker status is known;
- checkpoint truth matches the actual diff;
- reviewer can inspect artifacts without reconstructing the work from chat.

`review-package-ready` does not mean `merged`.

## 6. Post-merge / deployed Definition of Done

If acceptance requires merged or deployed proof, the package is not complete
until evidence proves the requested target.

Examples:

- branch QA does not prove merged truth;
- preview QA does not prove production truth;
- deployed web QA does not prove real device behavior;
- merged code does not prove a scheduled deploy completed.

Use `workflow/templates/POST_MERGE_VALIDATION_TEMPLATE.md` when this distinction
matters.

## 7. Track closure Definition of Done

A Track can be closed only when:

- all required Lanes or Tasks have known package status;
- merge or acceptance trace exists for required packages;
- superseded paths are marked;
- open follow-up is explicit;
- owner has made a closure decision.

A merged PR is not automatically a closed Track.

## Rule

If work fails Definition of Ready, do not launch execution.

If work fails Definition of Done, do not call it closed.
