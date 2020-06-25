// Shaft
translate([-5, -10, 0])
  cube([10, 40, 1]);

// Tip
translate([0, 30, 0])
  cylinder(h=1,r=5);

difference() {
union() {
  // Ball left
  translate([-9, -6, 0])
    cylinder(h=1, r=6);

  // Ball right
  translate([9, -6, 0])
    cylinder(h=1, r=6);
}

// Ball cut off
translate([-20, -20, -1])
  cube([40, 10, 3]);
}
