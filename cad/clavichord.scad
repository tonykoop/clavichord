// Clavichord tangent-key action coupon — ILLUSTRATIVE SCAFFOLD ONLY.
//
// Authority: pending_measurement. NOT fabrication authority. This packet is a
// V5 L2 concept study that INTENTIONALLY RELEASES NO DIMENSIONS: no scale
// length, string count, gauges, tuning, tangent coordinates, key dimensions,
// key dip, leverage, bridge/hitch layout, or case geometry (design.md,
// README "Readiness Boundary"). Every parameter below is an
// `estimate_pending_measurement` PLACEHOLDER chosen only so the mechanism reads
// as a shape — none is a design value, and none may be measured off this model
// or used to cut, drill, or lay out tangent positions.
//
// What this models: the design.md "first design job" — a single-key action
// coupon that shows how a key lever lifts a brass tangent into a string from
// below, the tangent both exciting the string and defining its speaking length
// while the key is held (the bebung / dynamic-touch mechanism). It is a
// topology diagram, not a part.
//
// Source: design.md "Mechanism Overview" / "L2 Subsystem Plan" (qualitative).
// Units: millimetres (illustrative scale only).

/* [ILLUSTRATIVE PLACEHOLDERS — NOT design values] */
// Each maps to a design.md estimate_*_pending_measurement parameter name.
est_key_length_mm        = 300;  // estimate_key_leverage_* (lever length)
est_key_width_mm         = 14;   // key blade width (illustrative)
est_key_thick_mm         = 10;
est_balance_from_front   = 190;  // estimate_key_leverage_* (pivot station)
est_key_dip_mm           = 6;    // estimate_key_dip_* (shown at rest = 0)
est_tangent_height_mm    = 12;   // estimate_tangent_face_* (brass blade)
est_tangent_width_mm     = 3;
est_string_course_mm     = 240;  // estimate_string_course_plan_* (bridge->hitch)
est_string_z_mm          = 34;   // string plane above baseboard (illustrative)
est_bridge_h_mm          = 10;   // estimate_bridge_hitchpin_field_*
est_show_pressed         = 0;    // 0 = key at rest, 1 = tangent in contact

// ---------------------------------------------------------------------------
// Illustrative geometry (topology, not dimensioned parts)
// ---------------------------------------------------------------------------

// Rotation of the key about the balance rail when a key is pressed. Derived
// from the illustrative dip only — NOT an action-geometry claim.
key_angle = est_show_pressed
  ? atan2(est_key_dip_mm, est_balance_from_front) : 0;

module baseboard() {
  color("tan")
    translate([-20, -30, -8]) cube([est_key_length_mm + 40, 60, 8]);
}

module balance_rail() {
  color("saddlebrown")
    translate([est_balance_from_front - 4, -25, 0]) cube([8, 50, 6]);
}

// Single key lever, pivoting about the balance rail. Front (player) end at x=0,
// tangent end at the rear.
module key_lever() {
  color("cornsilk")
    translate([est_balance_from_front, 0, 6])
      rotate([0, key_angle, 0])
        translate([-est_balance_from_front, -est_key_width_mm / 2, 0])
          cube([est_key_length_mm, est_key_width_mm, est_key_thick_mm]);
}

// Brass tangent standing at the rear of the key; it rises into the string when
// the key is pressed. Position follows the key rotation.
module tangent() {
  color("goldenrod")
    translate([est_balance_from_front, 0, 6])
      rotate([0, key_angle, 0])
        translate([est_key_length_mm - est_tangent_width_mm - 6,
                   -est_tangent_width_mm / 2, est_key_thick_mm])
          cube([est_tangent_width_mm, est_tangent_width_mm,
                est_tangent_height_mm]);
}

// A single string course from bridge to hitch, held at the string plane. The
// tangent contacts it partway along, splitting sounding (bridge side) from
// damped (hitch side) — the clavichord's defining feature.
module string_course() {
  x_tangent = est_key_length_mm + est_balance_from_front
              - est_balance_from_front - est_tangent_width_mm - 6
              + est_balance_from_front;  // tangent x-station (illustrative)
  color("silver")
    translate([est_balance_from_front - 30, 0, est_string_z_mm])
      rotate([0, 90, 0])
        cylinder(h = est_string_course_mm, d = 0.8, $fn = 12);
  // Bridge (bridge-side speaking boundary) and hitch (damped end).
  color("peru")
    translate([est_balance_from_front - 30, -8, est_string_z_mm - est_bridge_h_mm])
      cube([6, 16, est_bridge_h_mm]);
  color("dimgray")   // damping felt at the hitch (non-speaking) end
    translate([est_balance_from_front - 30 + est_string_course_mm - 18, -8,
               est_string_z_mm - 4])
      cube([16, 16, 4]);
}

module clavichord_coupon() {
  baseboard();
  balance_rail();
  key_lever();
  tangent();
  string_course();
}

clavichord_coupon();

echo("CLAVICHORD ACTION COUPON — ILLUSTRATIVE ONLY, no released dimensions.");
echo(str("est_show_pressed=", est_show_pressed, " (all values are ",
         "estimate_pending_measurement placeholders, not authority)"));
