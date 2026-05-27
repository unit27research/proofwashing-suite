# Synthetic End-To-End Walkthrough

This walkthrough uses synthetic material only.

## Overstated Claim

```markdown
The model is safe for hospitals and ready for regulated teams.
```

## Evidence Notes

```markdown
## Evidence: local checklist
- evidence provided: local checklist and synthetic demo only
- evidence strength: artifact-backed
- evidence type: local checklist
- scope supported: local checklist on synthetic prompts
- limitations: no clinical review; no patient data; no hospital environment; no external validation
- corroboration status: none
```

## Review Position 01: Humility Engine

Question:

> Does the claim outrun the evidence?

Expected review signal:

```text
scope_mismatch
proofwashing
```

Narrower supported claim:

```text
A local checklist and synthetic demo were run against sample prompts. This does not establish medical safety or regulated-team readiness.
```

## Review Position 02: Evidence Floor

Question:

> What evidence class does this claim require?

Expected review signal:

```text
below_floor
scope_mismatch
proofwashing
```

Reason:

```text
Medical safety and regulated-team readiness require stronger evidence than a local artifact-backed checklist.
```

## Review Position 03: Proof Decay

Question:

> Is the proof still current and condition-valid?

Expected review signal if the checklist is old or conditions changed:

```text
proof_decay
changed_conditions
limited_artifact
```

Reason:

```text
Old or condition-shifted proof should not be reused as current proof without review.
```

## Review Position 04: Caveat Drop

Question:

> Did limitations disappear from public copy?

Expected review signal:

```text
caveat_drop
scope_mismatch
proofwashing
```

Reason:

```text
The evidence says no clinical review, no patient data, and no external validation. The public claim drops those boundaries.
```

## Review Position 05: Claim Drift

Question:

> Did the claim get stronger across drafts?

Earlier draft:

```markdown
The local checklist ran on synthetic prompts.
```

Later draft:

```markdown
The model is safe for hospitals and ready for regulated teams.
```

Expected review signal:

```text
confidence_escalation
scope_expansion
proofwashing
```

## What The Suite Does Not Establish

This walkthrough does not prove the model is unsafe. It also does not prove the tool outputs are correct.

It shows the review surface: where stronger public language needs stronger evidence, clearer caveats, or narrower wording.
