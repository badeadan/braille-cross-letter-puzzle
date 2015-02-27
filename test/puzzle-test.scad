use <../braille-letter.scad>
use <../puzzle-base.scad>

spacing = 2.5;
distance = 3.75 + spacing;     
plate_height = 14;
plate_thickness = 2;

module base() {
	puzzle_base(
			plate_height + 2*plate_thickness,
			distance + 2*plate_thickness,
			plate_thickness,
			(distance + 2*plate_thickness)/2.1);
};

translate([ 0,  0, 0])
	base();
translate([23, 0, 0])
	base();
translate([ 0, 19, 0])
	base();
translate([23, 19, 0])
	base();

use <braille-letter.scad>
translate([0, 45, plate_height])
	rotate([90, 90, 0])
	braille_str("ABCD");

