/* custom screw and nut */

x= 15;
module bolt(){
  translate([0,0,x])cylinder(x*3,x*2,x*2);
  cylinder(x,0,x*2);
}


module start_thing() {
  translate([x/6,0,0]) circle(x);
}

module hexagon(){
   polygon([[sin(0)*x*2, cos(0)*x*2],[sin(60)*x*2, cos(60)*x*2],[sin(120)*x*2, cos(120)*x*2],[sin(180)*x*2, cos(180)*x*2],[sin(240)*x*2, cos(240)*x*2],[sin(300)*x*2, cos(300)*x*2]],paths=[[0,1,2,3,4,5]]);
}

module thread() {
   translate([0,0,x])linear_extrude(height = 6*x, center = true, convexity = 20, twist = 60*-100) start_thing();
}

module screw(){
   union(){
      intersection(){
        thread();
        bolt();
      }
      translate([0,0,x*4.4])linear_extrude(height = 8, center = true) hexagon();
   }
}

module nut(){
   difference(){
      linear_extrude(height = 8, center = true) hexagon();
      thread();
   }
}
screw();
translate([0,0,-4])nut();