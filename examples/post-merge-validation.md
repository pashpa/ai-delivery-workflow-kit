# Example: Post-Merge Validation

Use this when "merged" is not enough and the user needs proof in a deployed or
runtime target.

## Route

1. Tech Lead confirms the PR or package is merged.
2. Validation owner identifies the exact target:
   - merged main;
   - deployed main;
   - production runtime;
   - real device/runtime.
3. Validation owner proves build identity.
4. QA runs the relevant flow.
5. Tech Lead records verdict and asks closure question if the result passes.

## Use this template

- `workflow/templates/POST_MERGE_VALIDATION_TEMPLATE.md`

## Common mistakes

- preview screenshot presented as production proof;
- branch-local browser QA presented as deployed proof;
- production page checked without proving the build changed;
- real device acceptance closed with desktop browser evidence only.
