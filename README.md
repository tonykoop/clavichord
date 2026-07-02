<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Clavichord

**Status:** L2 V5 build-packet candidate — pending-measurement packet;
tangent-keyed string mechanism study only, not fabrication-ready. Every physical
claim remains `estimate_pending_measurement` until a measured reference,
prototype, or reviewed design table exists.

This repository is a V5 L2 build-packet seed for a clavichord. The design
centers on keys that lift brass tangents into strings from below. The tangent
both excites the string and defines its speaking length while the key remains
pressed, allowing dynamic touch and bebung-style pitch inflection. The packet
also tracks the layout choice between fretted/listed string sharing and
unfretted independent-string layouts.

This packet is intentionally conservative. It does not release scale length,
string count, string gauges, tuning, tangent coordinates, bridge or hitchpin
layouts, key dimensions, case geometry, CAD, DXF, toolpaths, or acoustic
predictions. Every physical claim remains `estimate_pending_measurement` until
a measured reference, prototype, or reviewed design table exists.

## Packet Map

- `design.md` - mechanism, parametric intent, and measurement gates.
- `bom.csv` - estimated subsystem list with pending measurement authority.
- `sourcing.csv` - spec-first candidate sources; no live prices, all pending
  measurement.
- `cut-list.csv` - candidate part ledger; all geometry and quantities remain
  pending measurement.
- `validation.csv` - the first measurement gates (tangent contact, bebung,
  touch, damping, layout, service, load, cut-list promotion).
- `risks.md` - acoustic/structural/serviceability/process risks mapped to gates.
- `drawing-brief.md` - the first drawings to make AFTER the gates close.
- `decision-record.md` - decisions, assumptions, and open questions.
- `cad/clavichord.scad` - ILLUSTRATIVE-ONLY action-coupon scaffold; releases no
  dimensions (authority `pending_measurement`).
- `wolfram/clavichord-wolfram-model.wl` - tangent-defined string model source
  (estimate placeholders; source-only, not executed).
- `evolution/` - StudioPipeline evolution-pipeline Stage 0 intake; Gate A cannot
  run until measurement gates close.
- `visual-output-register.csv` - V5 authority register for this concept packet.
- `cad/mcp-session-log.md` - QMD and no-MCP provenance log.

## Core Mechanisms

- Key levers lift tangents into strings from below.
- Brass tangents act as both hammer/contact and temporary fret.
- Dynamic control comes from direct key pressure after tangent contact.
- Bebung depends on controlled pressure modulation while the tangent remains in
  contact with the string.
- Fretted/listed layouts share strings between notes; unfretted layouts give
  notes independent string pairs or courses.

## Readiness Boundary

L2 means intent, subsystem interfaces, candidate part classes, and prototype
measurement gates are documented. Promotion beyond L2 requires reviewed
parameters, measured or sourced reference constraints, and prototype evidence.
L3 or stronger requires validated geometry and measured setup evidence.
