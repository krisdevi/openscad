/*inner hull of a 3 way electrical outlet-*/

module inner_hull() {
	difference(){
		cube([102,68,63],center=true);
		translate([4,0,0]) cube([102.1,60,60],center=true);
		translate([-30,32.1,-30])cube([60,2,60]);
		translate([-30,-34.1,-30])cube([60,2,60]);
		translate([-30,29.7,-21])cube([60,3,42]);
		translate([-30,-32.9,-21])cube([60,3,42]);
		translate([-51.1,-30,-30])cube([2,60,60]);
		translate([-49.15,-30,-21])cube([3,60,42]);
	}
}

inner_hull();

/*end comment*/