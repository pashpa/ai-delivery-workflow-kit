# Example: Cross-Surface Feature

Use this when one product behavior touches multiple screens, services, or
owners.

## Route

1. PM prepares one shared product contract before the work is split.
2. Tech Lead or Architecture TL defines shared technical contracts.
3. Foundation Lane creates shared rails when needed.
4. Feature Tech Leads receive bounded Lane or Task packages.
5. Each Developer subagent gets a disjoint write scope.
6. QA validates each package and then the integrated flow.
7. Post-merge validation proves deployed/runtime behavior if required.

## Minimum shared truth

- Product outcome.
- Scope and non-goals.
- Shared data or API contract.
- Ownership by Lane.
- Integration sequence.
- Validation target for each slice.

## Stop factors

- two TLs need to edit the same files without an integration plan;
- product behavior differs between surfaces;
- pricing, auth, payment, security, or access-control behavior is unclear;
- deploy/runtime proof is required but not assigned.
