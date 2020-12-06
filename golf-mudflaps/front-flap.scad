$fn = 100;

// Print bed
/*
translate([0, 0, -10]) {
  color([0/255, 0/255, 0/255]) {
    cube(size=[220, 220, 1]);
  }
}
//*/

p0 = [0, 0];
p1 = [0, 220];
p2 = [40, 220];
p3 = [150, 0];

linear_extrude(height=1, convexity=10, twist=0) {
  difference() {
    polygon([p0, p1, p2, p3]);
    polygon([[5, 5], [5, 215], [40, 215], [140, 5]]);
  }
}
