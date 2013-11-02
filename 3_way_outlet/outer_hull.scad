/* outer hull op 3 way electrical outlet*/

module outer_hull() {
	difference(){
		cube([102,72,67],center=true);
		cube([103,68,63],center=true);
		translate([-30,0,-34])scale([2,1,1])cylinder(4,5,5);
	}
}

outer_hull();