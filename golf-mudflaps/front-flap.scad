$fn = 100;

include <../modules/rounded_quadrilateral.scad>;

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

roundedQuadrilateral(p0, p1, p2, p3);
