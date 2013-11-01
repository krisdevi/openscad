x= 10; // testing on giteye

// lijn toegevoegd uit openscad
// lijn via remote add

module bolt(){
  translate([0,0,x])cylinder(x,x*2,x*2);
  cylinder(x,0,x*2);
}


module start_thing() {
  translate([x/6,0,0]) circle(x);
}

module thread() {
   translate([0,0,x])linear_extrude(height = 2*x, center = true, convexity = 10, twist = -2000) start_thing();
}

intersection(){
  thread();
  bolt();
}
