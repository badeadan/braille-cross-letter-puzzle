use <offset.scad>

module knight_profile() {
  linear_extrude(height = 5)
    import(file="knight_profile.dxf");
}

//inset(1)


module invert(thickness, bbox) {
	difference() {
	  cube(bbox, true);
	  children();
	}        
}

module inset2(thickness = 0.5, bbox = [5000, 5000, 5000]) {

  render() {
    invert(0.9 * bbox)
      minkowski() {
        invert() children();
        cube([2 * thickness, 2 * thickness, 2 * thickness], center=true);
      }
  }
}

module inset_shell2(thickness = 0.5, bbox = [5000, 5000, 5000]) {
  render() {
    difference() {
      children();
      translate([0, 0, -5 * thickness]) scale([1, 1, 100])
        translate([0, 0, -2 * thickness])
           inset2(thickness, bbox)
            children();
    }
  }
} 

translate([0, -10, 0])
inset2(3, [10,10,10])
cube([7,7,2]);

union() {
	translate([10, -10, 0])
		offset_shell(1)
		cube([7,7,2]);

	translate([10, -10, 0])
	cube([7,7,2]);
}
