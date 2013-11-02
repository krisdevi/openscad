// 	combine it all

use <faceplate.scad>;
use <inner-hull.scad>;
use <outer_hull.scad>;

module combined_inner() {
	translate([0,-17,0]) rotate([90,0,0]) faceplate();
	translate([0,17,0]) rotate([-90,180,0]) faceplate();
	rotate([90,0,0]) translate([-34,0,0]) rotate([0,-90,0]) faceplate();
	inner_hull();
}

module outlet(pos) {
	if (pos == 2) {
		combined_inner();
		translate([30,0,0]) rotate([0,0,180]) outer_hull();
		}	
	if (pos == 1) {
		combined_inner();
		translate([90,0,0]) rotate([0,0,180]) outer_hull();
		}
}

outlet(1); // 1: open
//outlet(2); // 2: close

