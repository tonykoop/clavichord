<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Clavichord Risks

All risks below are mapped to measurement gates in `validation.csv`. No physical
claim is released; every mitigation is `estimate_pending_measurement`.

## Acoustic / Mechanism Risks

- Tangent contact may scrape, double-strike, buzz, or produce unstable bebung —
  the defining feature could fail (VAL-001, VAL-002).
- Non-speaking string segments may ring sympathetically if damping is wrong,
  muddying the tangent-defined note (VAL-004).
- Dynamic touch may be indistinct if key leverage/dip are poorly chosen — but
  these stay pending measurement, so no value is asserted (VAL-003).

## Structural / Layout Risks

- Fretted/listed vs unfretted choice carries opposite trade-offs (string count,
  note-conflict, case load); choosing before evidence would be an invented
  decision (VAL-005).
- Case, bridge, hitch, and tuning-pin fields must carry string load and hold
  alignment; releasing geometry before a load review risks an unbuildable case
  (VAL-007).

## Serviceability / Safety Risks

- Tangent adjustment, key removal, and damper access must be demonstrable before
  geometry is promoted, or the instrument becomes unserviceable (VAL-006).
- String load and pinch points need review before any action or case geometry
  is released (VAL-007).

## Process Risk

- Any premature promotion beyond L2 (releasing scale, gauges, tuning, tangent
  coordinates, or CAD) without measured/reviewed sources would violate the
  packet's honesty boundary. Cut-list promotion is gated (VAL-008).
