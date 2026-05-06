# Install Manifest

Status: Active

This manifest defines the fast, copy-first installation path.

Use it when installing `ai-delivery-workflow-kit` into a target product repository.

## 1. Mandatory fast path

Preferred installation method:

1. Fetch the workflow kit once:
   - `git clone --depth 1 https://github.com/pashpa/ai-delivery-workflow-kit {temp-dir}/ai-delivery-workflow-kit`
   - or download and unpack the GitHub archive once if `git clone` is unavailable.
2. Copy the installable workflow tree byte-for-byte:
   - source: `workflow/`
   - target: `{target-repo}/workflow/`
3. Create target root files from templates:
   - `workflow/templates/ROOT_AGENTS_TEMPLATE.md` -> `{target-repo}/AGENTS.md`
   - `workflow/templates/CURRENT_WORK_TEMPLATE.md` -> `{target-repo}/CURRENT_WORK.md`
   - `workflow/templates/PROJECT_CONTEXT_TEMPLATE.md` -> `{target-repo}/PROJECT_CONTEXT.md`
   - `workflow/templates/INSTALLER_ONBOARDING_CHECKLIST_TEMPLATE.md` -> `{target-repo}/workflow/onboarding/INSTALLER_ONBOARDING_CHECKLIST.md`
4. Adapt only target-specific root/context files unless a copied workflow doc truly needs a repo-specific exception.
5. Verify that required files exist.

For installation agents: copying a source tree is not manual editing. Use filesystem copy tools such as `cp -R`, `rsync`, archive extract, or the environment's equivalent. Do not recreate the workflow by writing one fetched file at a time unless no copy mechanism exists.

## 2. Prohibited slow path

Do not:

- fetch raw GitHub URLs one file at a time;
- use WebFetch for the canonical workflow tree;
- recreate canonical docs with ApplyPatch or editor writes;
- summarize, compress, translate, or rewrite canonical workflow docs during installation;
- install a "distilled" subset unless the human explicitly asks for a partial install;
- copy source root `README.md`, source root `QUICKSTART.md`, or source root `AGENTS.md` into the target as product-repo files;
- create a git submodule unless the human explicitly asks for submodule-based installation.

If the environment cannot clone, download, or copy the source tree, stop and ask the human for permission or a local path to the kit. Do not fall back to slow hand reconstruction.

## 3. Source tree to copy

Copy the full `workflow/` directory.

The copied tree includes:

- `workflow/README.md`
- `workflow/BASELINE.md`
- `workflow/core/`
- `workflow/policies/`
- `workflow/guides/`
- `workflow/roles/`
- `workflow/prompts/`
- `workflow/templates/`

This is intentional. It is faster and safer to copy the complete workflow tree than to let the agent decide file-by-file during installation.

## 4. Target root files

Create these files in the target repo:

| Target path | Source | Rule |
| --- | --- | --- |
| `AGENTS.md` | `workflow/templates/ROOT_AGENTS_TEMPLATE.md` | Adapt to the target repo. Preserve role separation, workflow links, model baseline, git hygiene, QA boundaries, and packaging truth. |
| `CURRENT_WORK.md` | `workflow/templates/CURRENT_WORK_TEMPLATE.md` | Fill date, actual model baseline, and initial empty/current work state. |
| `PROJECT_CONTEXT.md` | `workflow/templates/PROJECT_CONTEXT_TEMPLATE.md` | Fill inferred facts and human-confirmed facts during onboarding. |
| `workflow/onboarding/INSTALLER_ONBOARDING_CHECKLIST.md` | `workflow/templates/INSTALLER_ONBOARDING_CHECKLIST_TEMPLATE.md` | Track installer phases and update after each phase. |

If the target repo already has one of these files, merge carefully:

- preserve existing repo-specific truth;
- add workflow links and rules;
- do not overwrite unrelated user content without explicit approval.

## 5. Integrity check

After copying, verify:

- `workflow/BASELINE.md` exists;
- `workflow/core/WORKFLOW_CONSTITUTION.md` exists;
- `workflow/core/PROJECT_WORKFLOW.md` exists;
- `workflow/core/GIT_OPERATIONS.md` exists;
- `workflow/policies/DEFINITION_OF_READY_AND_DONE.md` exists;
- `workflow/roles/PM_WORKFLOW.md` exists;
- `workflow/roles/TECH_LEAD_WORKFLOW.md` exists;
- `workflow/roles/DEVELOPER_WORKFLOW.md` exists;
- `workflow/roles/QA_WORKFLOW.md` exists;
- `workflow/templates/DEV_TASK_TEMPLATE.md` exists;
- `workflow/templates/TL_TO_DEVELOPER_SUBAGENT_PACKET_TEMPLATE.md` exists;
- `workflow/templates/INSTALLER_ONBOARDING_CHECKLIST_TEMPLATE.md` exists;
- `workflow/templates/PROJECT_CONTEXT_TEMPLATE.md` exists;
- root `AGENTS.md` exists;
- root `CURRENT_WORK.md` exists;
- root `PROJECT_CONTEXT.md` exists;
- `workflow/onboarding/INSTALLER_ONBOARDING_CHECKLIST.md` exists.

If any required file is missing, fix the copy operation before starting onboarding.

## 6. Timebox

The file installation phase should normally take seconds, not many minutes.

If installation is still fetching or writing individual workflow docs after two minutes:

1. stop that approach;
2. switch to clone/archive + tree copy;
3. record the correction in the onboarding checklist.

If the agent has already created partial files through a slow path, compare against the source kit and replace canonical docs with clean copies before continuing.
