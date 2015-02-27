use <../braille-letter.scad>
use <../puzzle-base.scad>

spacing = 2.5;
distance = 5 + spacing;     
plate_height = 14;
plate_thickness = 2;
border = 2;

module base() {
	puzzle_base(
			plate_height + 2*border + 0.1,
			distance + 2*border + 0.1,
			plate_thickness,
			distance/1.3, 
			[2, 3]);
};

translate([ 0,  0, 0])
	base();
translate([26, 0, 0])
	base();
translate([ 0, 19, 0])
	base();
translate([26, 19, 0])
	base();

//translate([0, 45, plate_height])
//	rotate([90, 90, 0])
//	braille_str("ABCD");

