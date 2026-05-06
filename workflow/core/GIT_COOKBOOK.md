# Git Cookbook For Agents

Status: Active

This cookbook gives concrete git commands for agents operating inside a target repo.

Use the target repo's adapted rules if they are stricter.

## 1. Freshness gate

Run before non-trivial work, resume, handoff, review, or merge:

```bash
git fetch origin --prune
git status --short --branch
git log --oneline --decorate --graph --max-count=12 --all
```

If `main` is behind `origin/main`:

```bash
git switch main
git pull --ff-only origin main
```

Do not start from stale local `main`.

## 2. Start a bounded branch

```bash
git switch main
git pull --ff-only origin main
git switch -c feature/{short-scope}
```

Use a prefix that matches the work:

- `feature/{short-scope}`
- `fix/{short-scope}`
- `docs/{short-scope}`
- `workflow/{short-scope}`
- `audit/{short-scope}`

## 3. Optional worktree for parallel work

From the control-plane repo:

```bash
git fetch origin --prune
git worktree add ../{repo}-worktrees/{short-scope} -b feature/{short-scope} origin/main
```

Use worktrees when multiple agents or lanes may run in parallel.

## 4. Inspect dirty state

```bash
git status --short --branch
git diff --stat
git diff
```

If there are changes you did not make, classify them before editing.

Do not overwrite unknown or user-owned changes.

## 5. Commit a package

```bash
git status --short
git diff --stat
git add {files}
git commit -m "{clear package summary}"
```

Commit only related changes for the current Task, Lane, or workflow package.

## 6. Push a review package

```bash
git push -u origin HEAD
```

If GitHub CLI is available:

```bash
gh pr create --title "{title}" --body "{summary, validation, risks}"
```

## 7. Update a branch before review

If the base moved:

```bash
git fetch origin --prune
git switch {branch}
git rebase origin/main
```

If the repo prefers merge commits instead of rebase:

```bash
git merge origin/main
```

Finish or abort any rebase or merge in the same work cycle.

## 8. Merge accepted docs or package

Use the repo's PR policy. With GitHub CLI:

```bash
gh pr view {number} --json mergeStateStatus,isDraft,reviewDecision,statusCheckRollup
gh pr merge {number} --merge --delete-branch
```

After merge:

```bash
git switch main
git pull --ff-only origin main
git status --short --branch
```

## 9. Delete local branches

After the branch is merged and no longer needed:

```bash
git branch --delete {branch}
```

If a worktree was used:

```bash
git worktree list
git worktree remove ../{repo}-worktrees/{short-scope}
git branch --delete {branch}
```

Never delete a branch that still contains unmerged work unless abandonment is explicit.

## 10. Report git state in checkpoints

Every checkpoint should include:

- branch;
- commit;
- PR if any;
- base branch;
- freshness evidence;
- whether the package is local-only, review-package-ready, merged, or closed.
