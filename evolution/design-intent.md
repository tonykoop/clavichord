# Design Intent — clavichord rev A

- Master CAD: `cad/clavichord.scad` (sha256: 4e42649c9958f309227306861efef0976e4f01ef4f41901e4163579cb21efe59) — ILLUSTRATIVE-ONLY action-coupon scaffold, driven by `design.md` (sha256: bd980f00f78b855774b020704b397100f767f7fc3c70989ea2a3c64ff287cba3). No design table exists; the packet releases no dimensions.
- Function: A clavichord is an expressive tangent machine. A pressed key raises a brass tangent into a string from below; the tangent both excites the string and defines its speaking length while the key is held. Small pressure changes bend pitch (bebung) and vary dynamics (dynamic touch) — the instrument's defining features. Fretted/listed layouts share one string course between keys; unfretted layouts give each note its own course.
- Environment: intended indoor keyboard instrument; sustained string load on case/bridge/pin fields (all concept-only). The first build is a single-key action coupon, not a full keyboard.
- Target qty: 1 (action coupon prototype). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

This packet INTENTIONALLY RELEASES NO DIMENSIONS. Every function-critical
quantity is an `estimate_pending_measurement` placeholder pending a bench test,
prototype, or reviewed design table. The table below lists the critical
*parameters* and their gates, with NO values asserted.

| Feature | Value | Gate | Source |
| --- | --- | --- | --- |
| Keyboard compass | estimate_pending_measurement | reviewed layout | design.md Parametric Intent |
| Fretted vs unfretted layout | estimate_pending_measurement | VAL-005 note-conflict map | design.md Stringing And Layout |
| Key leverage / dip | estimate_pending_measurement | VAL-003 dynamic touch | design.md Key Action |
| Tangent face / material | estimate_pending_measurement | VAL-001 contact test | design.md Brass Tangents |
| String course plan / gauges | estimate_pending_measurement | VAL-005 layout branch | design.md Stringing And Layout |
| Damping layout | estimate_pending_measurement | VAL-004 damping test | design.md Damping |
| Bridge / hitch / pin fields | estimate_pending_measurement | VAL-007 load review | design.md Case, Bridges, And Pins |
| Case load path | estimate_pending_measurement | VAL-007 load + pinch review | design.md Case, Bridges, And Pins |

## Incidental (free for DFM)

- None released — the packet is a mechanism study; no incidental geometry exists yet.

## Must-nots (DFM may never violate)

- Do NOT release or measure scale length, string count, gauges, tuning, tangent coordinates, key dimensions, key dip, leverage, bridge/hitch layout, or case geometry off the illustrative scad (README Readiness Boundary; design.md L2 Boundary).
- Damping must not prevent bebung or dynamic touch (design.md Damping; VAL-004).
- Do NOT choose the fretted-vs-unfretted branch before the note-conflict + load evidence exists (design.md; VAL-005).
- Do NOT promote any part class to cutting/drilling before it is tied to a measured or reviewed source (VAL-008).

## Material intent

- Candidate classes only (all pending measurement): brass tangents, music-wire strings, tuning/hitch pins, key-lever stock, damping cloth/felt, case/soundboard/bridge stock — per bom.csv / sourcing.csv. No specs fixed.

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run and cannot run until the `validation.csv` measurement gates close. Nothing is presented as shippable; the honesty boundary (no released dimensions) is preserved.
