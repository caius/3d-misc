// Base
cube([45, 20, 3]);

// Upright
translate([0, (20-3), 3])
  cube([45, 3, 45]);

// Top
translate([0, 0, 45])
  cube([45, 20, 3]);
