 difference() {
  // Outside edge
  cube([25, 125, 2]);

  // Inner slot
  translate([4, 20, -5])
    cube([18, 85, 10]);

  // Top circle
  translate([(5+7), (5+5), -5])
    cylinder(h=10,r=5);

  // Bottom circle
  translate([(5+7), (5+110 ), -5])
    cylinder(h=10,r=5);
}
