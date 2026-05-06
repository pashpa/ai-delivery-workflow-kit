# Example: Small UI Task

Use this when a UI change is small enough to avoid heavy planning but still
needs evidence.

## Route

1. Tech Lead confirms the product intent is already clear.
2. Tech Lead creates a small `DEV_TASK`.
3. If truly tiny, Tech Lead may use the direct-execution exception.
4. Otherwise Tech Lead launches a Developer subagent with `GPT-5.5` and
   `medium` reasoning.
5. Developer returns checkpoint with browser-QA evidence.
6. Tech Lead reviews and decides accept, follow-up, retry, or replan.

## Minimum artifacts

- Task or compact Task packet.
- Acceptance criteria.
- Changed files.
- Checks run.
- Browser QA surface and screenshot if visual behavior changed.

## What not to do

- Do not skip evidence because the change is small.
- Do not run full release QA if branch-local browser QA proves the acceptance.
- Do not call it deployed unless deployed proof was requested and collected.
