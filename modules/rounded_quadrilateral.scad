module roundedQuadrilateral(bl, tl, tr, br, radius=5) {
  assert(bl)


  hull() {
    // Bottom left
    bl_x = bl[0] + radius;
    bl_y = bl[1] + radius;
    translate([bl_x, bl_y, 0]) {
      circle(r=radius);
    }

    // Top Left
    tl_x = tl[0] + radius;
    tl_y = tl[1] - radius;
    translate([tl_x, tl_y, 0]) {
      circle(r=radius);
    }

    // Top Right
    tr_x = tr[0] - radius;
    tr_y = tr[1] - radius;
    translate([tr_x, tr_y, 0]) {
      circle(r=radius);
    }

    // Bottom Right
    br_x = br[0] - radius;
    br_y = br[1] + radius;
    translate([br_x, br_y, 0]) {
      circle(r=radius);
    }
  }
}
