# Git Operations

Status: Active

This document defines git discipline for multi-agent and multi-machine delivery.

For concrete commands, use `workflow/core/GIT_COOKBOOK.md`.

## 1. Freshness gate

Assume the remote repository may be ahead of local state.

Before non-trivial work, before resuming after a pause, and before handoff or merge:

1. run `git fetch origin --prune`;
2. run `git status --short --branch`;
3. inspect relevant remote changes with `git log --oneline --decorate --graph --max-count=12 --all` or a narrower command;
4. if local `main` is behind `origin/main`, update it with `git pull --ff-only` from `main`;
5. if a feature branch is behind its intended base, rebase or merge deliberately before continuing;
6. if there are local changes you did not make, classify them before editing.

Do not treat local `main` as current truth until this gate has passed.

## 2. Branch lifecycle

For non-trivial work:

1. start from fresh `origin/main` or the documented base branch;
2. create a dedicated branch for one bounded package;
3. prefer a dedicated worktree when parallel work is expected;
4. commit only related changes;
5. push the branch when it is review-package-ready or when remote backup is needed;
6. delete the branch only after merge, closure, or explicit abandonment.

Recommended branch prefixes:

- `feature/{short-scope}`
- `fix/{short-scope}`
- `workflow/{short-scope}`
- `docs/{short-scope}`
- `audit/{short-scope}`

## 3. Mainline truth

Accepted workflow, architecture, product, and operating-model docs should be merged to `origin/main` promptly.

Reason:

- humans and agents may start from another machine;
- remote `main` should contain the current operating truth;
- long-lived process truth in side branches creates stale handoffs.

Implementation code may remain in feature or lane branches until the responsible TL accepts the package.

## 4. Merge discipline

Before merge:

- run the freshness gate;
- confirm the branch contains only the intended package;
- confirm review and validation evidence exists;
- resolve base drift deliberately;
- prefer fast-forward or PR merge according to repo policy;
- push the resulting mainline update when the package is accepted.

After merge:

- confirm `origin/main` contains the accepted truth;
- mark the branch or package state accurately;
- delete local and remote feature branches when the repo policy allows it;
- do not call the Track closed unless the closure gate is explicitly satisfied.

## 5. Dirty worktree rule

If the worktree is dirty:

1. inspect `git status`;
2. inspect relevant diffs;
3. classify changes as yours, user-owned, generated, obsolete, or unknown;
4. do not overwrite unknown or user-owned changes;
5. commit, stash, move, or explicitly leave changes only after classification.

Never hide dirty-state uncertainty in a handoff.

## 6. Packaging truth

Do not confuse:

- local change;
- committed branch;
- review-package-ready;
- merged;
- deployed;
- track-closed.

A checkpoint is not a merge. A merged PR is not automatically a closed Track.
