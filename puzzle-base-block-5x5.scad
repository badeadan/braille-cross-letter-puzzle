use <puzzle-base.scad>

spacing = 2.5;
distance = 5 + spacing;     
plate_height = 14;
plate_thickness = 2;
border = 1;

l = plate_height + 2*border + 0.6;
w = distance + 2*border + 0.2;

module base_nw() {
	puzzle_base(
			plate_height + 2*border + 0.6,
			distance + 2*border + 0.2,
			plate_thickness,
			distance/1.5, 
			[border, border*3],
			[1, 0, 0, 1]);
}

module base_n() {
	puzzle_base(
			plate_height + 2*border + 0.6,
			distance + 2*border + 0.2,
			plate_thickness,
			distance/1.5, 
			[border, border*3],
			[1, 0, 0, 0]);
}

module base_ne() {
	puzzle_base(
			plate_height + 2*border + 0.6,
			distance + 2*border + 0.2,
			plate_thickness,
			distance/1.5, 
			[border, border*3],
			[1,-1, 0, 0]);
}

module base_e() {
	puzzle_base(
			plate_height + 2*border + 0.6,
			distance + 2*border + 0.2,
			plate_thickness,
			distance/1.5, 
			[border, border*3],
			[0, -1, 0, 0]);
}

module base_se() {
	puzzle_base(
			plate_height + 2*border + 0.6,
			distance + 2*border + 0.2,
			plate_thickness,
			distance/1.5, 
			[border, border*3],
			[0, -1, -1, 0]);
}

module base_s() {
	puzzle_base(
			plate_height + 2*border + 0.6,
			distance + 2*border + 0.2,
			plate_thickness,
			distance/1.5, 
			[border, border*3],
			[0, 0, -1, 0]);
}

module base_sw() {
	puzzle_base(
			plate_height + 2*border + 0.6,
			distance + 2*border + 0.2,
			plate_thickness,
			distance/1.5, 
			[border, border*3],
			[0, 0, -1, 1]);
}

module base_w() {
	puzzle_base(
			plate_height + 2*border + 0.6,
			distance + 2*border + 0.2,
			plate_thickness,
			distance/1.5, 
			[border, border*3],
			[0, 0, 0, 1]);
}

module base_c() {
	puzzle_base(
			plate_height + 2*border + 0.6,
			distance + 2*border + 0.2,
			plate_thickness,
			distance/1.5, 
			[border, border*3],
			[0, 0, 0, 0]);
}

union() {
translate([l*0,w*0,0]) base_nw();
translate([l*0,w*1,0]) base_n();
translate([l*0,w*2,0]) base_n();
translate([l*0,w*3,0]) base_n();
translate([l*0,w*4,0]) base_ne();

translate([l*1-border,0,0]) cube([border*2,w*5,plate_thickness+border*3]);
translate([0,w*1-border,0]) cube([l*5,border*2,plate_thickness+border*3]);

translate([l*1,w*0,0]) base_w();
translate([l*1,w*1,0]) base_c();
translate([l*1,w*2,0]) base_c();
translate([l*1,w*3,0]) base_c();
translate([l*1,w*4,0]) base_e();

translate([l*2-border,0,0]) cube([border*2,w*5,plate_thickness+border*3]);
translate([0,w*2-border,0]) cube([l*5,border*2,plate_thickness+border*3]);

translate([l*2,w*0,0]) base_w();
translate([l*2,w*1,0]) base_c();
translate([l*2,w*2,0]) base_c();
translate([l*2,w*3,0]) base_c();
translate([l*2,w*4,0]) base_e();

translate([l*3-border,0,0]) cube([border*2,w*5,plate_thickness+border*3]);
translate([0,w*3-border,0]) cube([l*5,border*2,plate_thickness+border*3]);

translate([l*3,w*0,0]) base_w();
translate([l*3,w*1,0]) base_c();
translate([l*3,w*2,0]) base_c();
translate([l*3,w*3,0]) base_c();
translate([l*3,w*4,0]) base_e();

translate([l*4-border,0,0]) cube([border*2,w*5,plate_thickness+border*3]);
translate([0,w*4-border,0]) cube([l*5,border*2,plate_thickness+border*3]);

translate([l*4,w*0,0]) base_sw();
translate([l*4,w*1,0]) base_s();
translate([l*4,w*2,0]) base_s();
translate([l*4,w*3,0]) base_s();
translate([l*4,w*4,0]) base_se();
};

