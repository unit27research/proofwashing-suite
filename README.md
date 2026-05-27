# Proofwashing Suite

[![CI](https://github.com/unit27research/proofwashing-suite/actions/workflows/ci.yml/badge.svg)](https://github.com/unit27research/proofwashing-suite/actions/workflows/ci.yml)

Weak evidence should not become strong language by accident.

Proofwashing Suite is a Unit27 adjacent review suite for public claim review: uncertainty laundering, proofwashing, and evidence-boundary review.

It is not another detector. It is the public binder for five small local instruments that help a human inspect whether claims still fit the evidence.

## Release Status

`SOURCE_STATUS: PUBLIC_PACKAGE`
`ACCESS_STATUS: CLEARED_FOR_EXTERNAL_USE`
`UNIT27_POSITION: ADJACENT_REVIEW_SUITE`
`SUITE_ID: U27-PWS`
`PRIMARY_SURFACE: PUBLIC_CLAIM_REVIEW`

This repository is a Unit27 public orientation package: visible, inspectable, and intended for review sequence, tool selection, and first-use guidance. Controlled protocol materials remain outside this source package.

It answers one narrow question:

> Which Unit27 claim-review instrument should be used for this proofwashing risk?

## What Proofwashing Means Here

**Uncertainty laundering** is when uncertain, inferred, weak, incomplete, or tentative information becomes confident public language.

**Proofwashing** is when thin, stale, cosmetic, mismatched, or caveated evidence is made to sound like stronger proof than it is.

The suite focuses on a practical public-release problem: AI-polished writing can make weak evidence sound stronger than it is.

## Review Sequence

The tools can be used independently. The recommended sequence starts with Humility Engine because it is the origin instrument and the broad front door for claim/evidence boundary review.

| Review Position | Instrument | Review Question |
|---:|---|---|
| 01 | [Humility Engine](https://github.com/unit27research/humility-engine) | Does the claim outrun the evidence? |
| 02 | [Evidence Floor](https://github.com/unit27research/evidence-floor) | What evidence class does the claim require? |
| 03 | [Proof Decay](https://github.com/unit27research/proof-decay) | Is the proof still current and condition-valid? |
| 04 | [Caveat Drop](https://github.com/unit27research/caveat-drop) | Did limitations disappear from public copy? |
| 05 | [Claim Drift](https://github.com/unit27research/claim-drift) | Did the claim get stronger across drafts? |

This sequence is not mandatory. For example, Claim Drift can be used first when the available input is already a before/after draft pair.

## Relation To The Field Kit Suite

Proofwashing Suite is adjacent to the Unit27 field-kit operating chain.

The field kits help structure, package, evaluate, record, and gate AI-assisted work.

Proofwashing Suite reviews public claims after or alongside that work, asking whether the language still fits the evidence.

It does not replace Proof Ledger, Boundary Engine, Eval Bench, u27-check, or the Unit27 Field Kit Suite.

## What It Does

Proofwashing Suite gives a public map for:

- choosing the right claim-review instrument
- preserving evidence boundaries in public claims
- distinguishing evidence floor, evidence freshness, caveat retention, and draft drift
- running a synthetic end-to-end review sequence
- keeping the suite boundary visible before release

## What It Does Not Do

Proofwashing Suite is not a verifier, fact-checker, fraud detector, certification system, compliance system, legal reviewer, medical safety tool, or truth oracle.

It does not prove that a claim is true or false. It does not inspect external sources, validate screenshots, audit code, certify evidence, or decide what should be published.

It is a review orientation package. The linked instruments are heuristic review aids. Their outputs are prompts for human judgment, not final authority.

## Who It Is For

- builders reviewing public claims before release
- researchers and operators preserving evidence boundaries in public claims
- teams comparing claim language against evidence notes, proof artifacts, and prior drafts
- anyone trying to keep a demo from becoming a broader proof claim by accident

## Quick Start

Start with the tool map:

```bash
cat TOOLS.md
```

Then read the review sequence:

```bash
cat REVIEW_SEQUENCE.md
```

To verify this orientation package locally:

```bash
bash scripts/verify-package.sh
```

## End-To-End Example

The synthetic walkthrough lives in:

- [`examples/end_to_end/README.md`](examples/end_to_end/README.md)

It follows one overstated claim through the five review positions:

```text
Humility Engine -> Evidence Floor -> Proof Decay -> Caveat Drop -> Claim Drift
```

## Current Limits

- This repo is a binder, not a combined runner.
- It does not execute the five tools for you.
- Commands in `COMMANDS.md` assume each instrument has been cloned separately.
- The review sequence is guidance, not a universal policy.
- The examples are synthetic and intentionally narrow.

## Verify

```bash
bash scripts/verify-package.sh
```

## License

MIT
