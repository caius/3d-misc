$fn = 100;

include <../modules/rounded_quadrilateral.scad>;

module holed_arm(bl) {
  bl_x = bl[0];
  bl_y = bl[1];
  offset = 4; // ?! but it works

  translate([0, (bl_y - offset), 0]) {
    square(size=[(bl_x - offset), 2]);
  }
  difference() {
    translate([(bl_x - offset), (bl_y - offset), 0]) {
      square(size=[8, 8]);
    }
    translate([bl_x, bl_y, 0]) {
      circle(r=(5/2));
    }
  }
}

p0 = [0, 0];
p1 = [0, 220];
p2 = [40, 220];
p3 = [100, 0];

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
  holed_arm([33, 188]);

  // bottom hole
  holed_arm([58, 79]);
}
