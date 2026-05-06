# keystone-algo-graph-flow

`keystone-algo-graph-flow` keeps a focused OCaml implementation around algorithms. The project goal is to package an OCaml local lab for graph analysis with fixture event logs, golden state snapshots, and documented operating limits.

## Project Rationale

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how input width and boundary pressure should influence a review result.

## Keystone Algo Graph Flow Review Notes

For a quick review, compare `input width` with `complexity` before reading the middle cases.

## Feature Set

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/keystone-algo-graph-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `input width` and `complexity`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The OCaml addition stays small enough to inspect in one sitting.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

The same command runs the local verification path. The highest-scoring domain case is `stale` at 244, which lands in `ship`. The most cautious case is `recovery` at 133, which lands in `watch`.

## Next Improvements

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
