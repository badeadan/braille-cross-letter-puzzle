use <../braille-letter.scad>
use <../puzzle-base.scad>

spacing = 2.5;
distance = 5 + spacing;     
plate_height = 14;
plate_thickness = 2;
border = 1;

module base() {
	puzzle_base(
			plate_height + 2*border + 1,
			distance + 2*border + 0.6,
			plate_thickness,
			distance/1.5, 
			[border, border*3]);
};

translate([ 0,  0, 0])
	base();
translate([26, 0, 0])
	base();
translate([ 0, 19, 0])
	base();
translate([26, 19, 0])
	base();

//use <braille-letter.scad>
//translate([border+0.5, border+0.3, plate_thickness])
//	braille_letter("A");

translate([43, 30, plate_height])
	rotate([90, 90, 180])
	braille_str("ABCD", extra_space=1.7);

