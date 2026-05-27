# Tool Map

`SUITE_ID: U27-PWS`

Proofwashing Suite groups five adjacent Unit27 claim-review instruments. Each tool can be used alone. The suite exists to make their boundaries and sequence easier to understand.

| Review Position | Repository | Primary Signal | Use When |
|---:|---|---|---|
| 01 | [`humility-engine`](https://github.com/unit27research/humility-engine) | claim/evidence mismatch | A draft may be turning weak or incomplete evidence into confident language. |
| 02 | [`evidence-floor`](https://github.com/unit27research/evidence-floor) | required evidence class | A claim needs a declared evidence standard before publication. |
| 03 | [`proof-decay`](https://github.com/unit27research/proof-decay) | stale or condition-shifted proof | An old screenshot, demo, eval, checklist, or run may no longer support the current claim. |
| 04 | [`caveat-drop`](https://github.com/unit27research/caveat-drop) | missing limitations | Caveats in evidence notes may have disappeared from public copy. |
| 05 | [`claim-drift`](https://github.com/unit27research/claim-drift) | wording escalation across drafts | A later draft may be stronger, broader, or more proof-like than an earlier draft. |

## Boundaries

None of these tools confirms truth. None certifies safety, compliance, authenticity, performance, or readiness.

The shared function is narrower:

> Surface where the claim may no longer fit the evidence boundary.

## Common Failure Patterns

| Pattern | Primary Tool |
|---|---|
| A local demo becomes a broad readiness claim. | Humility Engine |
| A claim requires external corroboration but cites a local artifact. | Evidence Floor |
| A screenshot from last year is reused as current proof. | Proof Decay |
| Evidence notes say "synthetic data only" but public copy omits that boundary. | Caveat Drop |
| A cautious draft becomes "proven for teams" in the final version. | Claim Drift |
