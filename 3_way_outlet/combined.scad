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
	if (pos == close) {
		combined_inner();
		translate([0,0,0]) outer_hull();
		}	
	if (pos == open) {
		combined_inner();
		translate([90,0,0]) outer_hull();
		}
}

outlet(open);
//outlet(close);

