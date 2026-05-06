#!/usr/bin/env bash
set -euo pipefail

KIT_REPO_URL="${KIT_REPO_URL:-https://github.com/pashpa/ai-delivery-workflow-kit.git}"
KIT_ARCHIVE_URL="${KIT_ARCHIVE_URL:-https://github.com/pashpa/ai-delivery-workflow-kit/archive/refs/heads/main.tar.gz}"
TARGET_DIR="${1:-$PWD}"

cd "$TARGET_DIR"

if [ -e "workflow" ]; then
  echo "Refusing to overwrite existing workflow/."
  echo "Move or review workflow/ first, then rerun."
  exit 1
fi

tmp_dir="$(mktemp -d)"
cleanup() {
  rm -rf "$tmp_dir"
}
trap cleanup EXIT

kit_dir="$tmp_dir/ai-delivery-workflow-kit"

if command -v git >/dev/null 2>&1; then
  git clone --depth 1 "$KIT_REPO_URL" "$kit_dir"
else
  mkdir -p "$kit_dir"
  if command -v curl >/dev/null 2>&1; then
    curl -fsSL "$KIT_ARCHIVE_URL" | tar -xz --strip-components=1 -C "$kit_dir"
  elif command -v python3 >/dev/null 2>&1; then
    python3 - "$KIT_ARCHIVE_URL" "$kit_dir" <<'PY'
import io
import sys
import tarfile
import urllib.request

url, out_dir = sys.argv[1], sys.argv[2]
data = urllib.request.urlopen(url, timeout=60).read()
with tarfile.open(fileobj=io.BytesIO(data), mode="r:gz") as archive:
    members = archive.getmembers()
    prefix = members[0].name.split("/", 1)[0] + "/"
    for member in members:
        if not member.name.startswith(prefix):
            continue
        member.name = member.name[len(prefix):]
        if member.name:
            archive.extract(member, out_dir)
PY
  else
    echo "Need git, curl, or python3 to fetch the workflow kit."
    exit 1
  fi
fi

cp -R "$kit_dir/workflow" ./workflow

copy_if_missing() {
  src="$1"
  dest="$2"
  if [ -e "$dest" ]; then
    echo "Keeping existing $dest"
  else
    cp "$src" "$dest"
    echo "Created $dest"
  fi
}

copy_if_missing "workflow/templates/ROOT_AGENTS_TEMPLATE.md" "AGENTS.md"
copy_if_missing "workflow/templates/CURRENT_WORK_TEMPLATE.md" "CURRENT_WORK.md"
copy_if_missing "workflow/templates/PROJECT_CONTEXT_TEMPLATE.md" "PROJECT_CONTEXT.md"

mkdir -p "workflow/onboarding"
copy_if_missing "workflow/templates/INSTALLER_ONBOARDING_CHECKLIST_TEMPLATE.md" "workflow/onboarding/INSTALLER_ONBOARDING_CHECKLIST.md"

required_files=(
  "workflow/BASELINE.md"
  "workflow/core/WORKFLOW_CONSTITUTION.md"
  "workflow/core/PROJECT_WORKFLOW.md"
  "workflow/core/GIT_OPERATIONS.md"
  "workflow/policies/DEFINITION_OF_READY_AND_DONE.md"
  "workflow/roles/PM_WORKFLOW.md"
  "workflow/roles/TECH_LEAD_WORKFLOW.md"
  "workflow/roles/DEVELOPER_WORKFLOW.md"
  "workflow/roles/QA_WORKFLOW.md"
  "workflow/templates/DEV_TASK_TEMPLATE.md"
  "workflow/templates/TL_TO_DEVELOPER_SUBAGENT_PACKET_TEMPLATE.md"
  "workflow/templates/INSTALLER_ONBOARDING_CHECKLIST_TEMPLATE.md"
  "workflow/templates/PROJECT_CONTEXT_TEMPLATE.md"
  "AGENTS.md"
  "CURRENT_WORK.md"
  "PROJECT_CONTEXT.md"
  "workflow/onboarding/INSTALLER_ONBOARDING_CHECKLIST.md"
)

missing=0
for file in "${required_files[@]}"; do
  if [ ! -f "$file" ]; then
    echo "Missing required file: $file"
    missing=1
  fi
done

if [ "$missing" -ne 0 ]; then
  echo "Workflow bootstrap finished with missing files."
  exit 1
fi

echo "Workflow bootstrap complete."
echo "Next: return to the installer agent and say: bootstrap complete."
