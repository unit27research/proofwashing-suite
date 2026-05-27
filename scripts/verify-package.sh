#!/usr/bin/env bash
set -euo pipefail

required_files=(
  "README.md"
  "TOOLS.md"
  "REVIEW_SEQUENCE.md"
  "COMMANDS.md"
  "examples/end_to_end/README.md"
  "RELEASE_CHECKLIST.md"
  "LICENSE"
  ".github/workflows/ci.yml"
)

for file in "${required_files[@]}"; do
  test -f "$file"
done

grep -q "SUITE_ID: U27-PWS" README.md
grep -q "UNIT27_POSITION: ADJACENT_REVIEW_SUITE" README.md
grep -q "Humility Engine" README.md
grep -q "Evidence Floor" README.md
grep -q "Proof Decay" README.md
grep -q "Caveat Drop" README.md
grep -q "Claim Drift" README.md
grep -q "not a verifier" README.md
grep -q "Review Position | Instrument | Review Question" README.md
grep -q "No LinkedIn draft" RELEASE_CHECKLIST.md

if find . -name "LINKEDIN_DRAFT.md" -print | grep -q .; then
  echo "LINKEDIN_DRAFT.md must not be included in this public package."
  exit 1
fi

if grep -RInE "prevents fraud|fraud-proof|proves authenticity|enterprise-grade|revolutionary|guaranteed" \
  --exclude-dir=.git --exclude="verify-package.sh" .; then
  echo "Risky public-claim language found."
  exit 1
fi

echo "Proofwashing Suite package verification passed."
