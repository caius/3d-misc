$fn = 1000;

// We need a large rectangle with a semi-circle cut out of it at one end
// The spacing from the wall is the distance from square end to tip of semi-circle. 120mm in my case.

difference() {
  linear_extrude(height = 20) {
    // Create the curve around the desk leg
    // We lay this out with a big circle to cover the full width,
    // then cut it in half with a rectangle and also remove the
    // inside of it leaving a 10mm arc
    difference() {
      translate([0, 50, 0]) {
        circle(d = 100);
      }

      union() {
        translate([-50, 0, 0]) {
          square(size = [50, 100]);
        };

        // Cut out the semi-circle
        translate([0, 50, 0]) {
          circle(d = 82);
        };
      };
    };

    // Middle bit
    translate([45, 35, 0]) {
      square(size = [165-45, 30]);
    }

    // Wall foot
    translate([145, 0, 0]) {
      square(size = [20, 100]);
    }
  }

  translate([55, 45, 17]) {
    linear_extrude(height = 5) {
      text("120mm", size = 10, font = "Courier New:style=Bold");
    }
  }
}
