<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Decision Record

## Decisions

- Treat the clavichord as a tangent-keyed string instrument where touch after
  contact is part of the acoustic mechanism.
- Keep all dimensions, tuning, tangent coordinates, pressure values, string
  gauges, CAD, and DXF work out of the L1 packet.
- Preserve fretted/listed and unfretted layouts as explicit open branches.
- Make the first physical work a one-key tangent test rig before any complete
  keyboard or case design.

## Assumptions

- Brass tangents strike strings from below and define pitch while the key is
  pressed.
- Bebung depends on stable tangent contact and controllable after-pressure.
- Fretted/listed layouts trade independence for fewer string courses.
- Unfretted layouts trade added load and hardware for note independence.

## Open Questions

- Which historical or measured clavichord family should govern the first L2
  parameter set?
- Should the first branch study a fretted/listed layout, an unfretted layout,
  or a removable action that can compare both?
- What tangent face and adjustment method gives clear attack without buzz?
- What damping layout preserves dynamic touch and bebung?
- How should string load, case stiffness, and service access be reviewed before
  a full packet?

## Next Work

- Select a measured reference frame.
- Build a one-key tangent/string/damper test rig.
- Log attack, release, buzz, bebung control, and dynamic range.
- Compare fretted/listed and unfretted implications with a note-conflict and
  load review.
- Record safety and serviceability observations before readiness is upgraded.
