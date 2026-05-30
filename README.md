<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Clavichord

Status: L1 V5 concept packet; tangent-keyed string mechanism study only, not
fabrication-ready.

This repository is a V5 L1 build-packet seed for a clavichord. The design
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
- `decision-record.md` - decisions, assumptions, and open questions.
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

L1 means intent, risks, and subsystem interfaces are documented. Promotion to
L2 requires reviewed parameters, measured or sourced reference constraints, and
prototype test plans. L3 or stronger requires validated geometry and measured
setup evidence.
