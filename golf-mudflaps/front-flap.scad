$fn = 100;

include <../modules/rounded_quadrilateral.scad>;

p0 = [0, 0];
p1 = [0, 220];
p2 = [40, 220];
p3 = [150, 0];

linear_extrude(height=1, convexity=0, twist=0) {
  difference() {
    roundedQuadrilateral(p0, p1, p2, p3);

    translate([1, 2, 0]) {
      scale([0.98, 0.98, 1]) {
        roundedQuadrilateral(p0, p1, p2, p3);
      }
    }
  }

  // Top hole
  translate([0, 184, 0]) {
    square(size=[29, 2]);
  }
  difference() {
    translate([29, 184, 0]) {
      square(size=[8, 8]);
    }
    translate([33, 188, 0]) {
      circle(r=(5/2));
    }
  }

  // bottom hole
  translate([0, 75, 0]) {
    square(size=[64, 2]);
  }
  difference() {
    translate([64, 75, 0]) {
      square(size=[8, 8]);
    }
    translate([68, 79, 0]) {
      circle(r=(5/2));
    }
  }
}
