module faceplate(){
   difference(){
      starting_block();
      translate([0,0,2.1])cylinder(15,19.5,19.5);   
      translate([10,0,-0.1])cylinder(3,2.5,2.5);
      translate([-10,0,-0.1])cylinder(3,2.5,2.5);
      translate([0,10,-0.1])cylinder(3,2.5,2.5);
      translate([0,0,-0.1])cylinder(3,1.5,1.5);
   }
}
module starting_block(){
   union (){
      cylinder(17,22,22);
      translate([-30,-30,15])cube([60,60,2]);
   }
}

faceplate();