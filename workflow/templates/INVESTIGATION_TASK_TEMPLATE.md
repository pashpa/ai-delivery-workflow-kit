# Investigation Task Template

Date: YYYY-MM-DD
Status: draft
Owner: Tech Lead
Executor: Developer
Initiative: `{name}`
Track: `{name}`
Lane: `{name}`
Task: `{name}`
Task mode: `investigation`

## 1. Basis

- Product docs:
- Related task docs:
- Bug note or incident note:
- Related architecture or decision docs:

## 2. Current symptom

- Exact symptom:
- Expected behavior:
- Actual behavior:
- Environment where this appears:

## 3. Repro contract

- Repro steps to try:
- Known preconditions:
- Whether repro is stable or intermittent:

## 4. Hypotheses to test

1. ...
2. ...
3. ...

## 5. What to do

1. Reproduce or disprove the issue.
2. Test the listed hypotheses.
3. Collect bounded evidence.
4. Return a factual investigation verdict.

## 6. What not to do

- do not ship speculative fixes as accepted implementation;
- do not silently widen into a broad refactor;
- do not claim root cause without proof.

## 7. Investigation acceptance

This Task is successful if it returns:

- reproduced or not reproduced;
- exact repro actually used;
- hypothesis tested;
- root cause proven / not proven / narrowed;
- what was falsified;
- whether a follow-up fix task should be opened.

## 8. Required output

Return:

- `workflow/templates/DEVELOPER_CHECKPOINT_TEMPLATE.md`
- explicit investigation verdict
- next-step recommendation

## 9. Stop factors

Return immediately if:

- the repro contract is invalid;
- the evidence path depends on external systems not covered here;
- the investigation clearly requires a new product or architecture decision.
