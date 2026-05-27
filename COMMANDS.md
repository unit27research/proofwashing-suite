# Commands

These commands assume each repository has been cloned beside this suite repo.

```text
workspace/
  proofwashing-suite/
  humility-engine/
  evidence-floor/
  proof-decay/
  caveat-drop/
  claim-drift/
```

## Humility Engine

```bash
cd ../humility-engine
python3 run.py examples/scenarios/medical_safety_claim.md \
  --evidence examples/scenarios/medical_safety_claim.md \
  --output examples/reviews/medical_safety_review.md \
  --review-only
```

Use when a draft claim may be outrunning its evidence.

Note: the Humility Engine synthetic medical-safety scenario keeps the draft claim and structured evidence notes in the same Markdown file, so the command uses the same path for `input` and `--evidence`.

## Evidence Floor

```bash
cd ../evidence-floor
npm run review -- examples/scenarios/medical_safety_claim.md \
  --evidence examples/scenarios/medical_safety_evidence.md \
  --policy examples/policies/evidence-floor.md \
  --output examples/reviews/medical_safety_floor_review.md \
  --review-only
```

Use when the claim class needs a declared evidence floor.

## Proof Decay

```bash
cd ../proof-decay
python3 run.py examples/scenarios/medical_safety_claim.md \
  --proof examples/scenarios/medical_safety_proof.md \
  --output examples/reviews/medical_safety_decay_review.md \
  --review-date 2026-05-27 \
  --review-only
```

Use when proof may be stale, condition-shifted, or too narrow for the current claim.

## Caveat Drop

```bash
cd ../caveat-drop
npm run review -- examples/scenarios/medical_safety_claim.md \
  --caveats examples/scenarios/medical_safety_caveats.md \
  --output examples/reviews/medical_safety_caveat_review.md \
  --review-only
```

Use when limitations in evidence notes may have disappeared from public copy.

## Claim Drift

```bash
cd ../claim-drift
python3 run.py examples/scenarios/medical_safety_before.md examples/scenarios/medical_safety_after.md \
  --evidence examples/scenarios/medical_safety_evidence.md \
  --output examples/reviews/medical_safety_drift_review.md \
  --review-only
```

Use when a later draft may have become stronger than an earlier draft.

## Suite Verification

From this repository:

```bash
bash scripts/verify-package.sh
```
