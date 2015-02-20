use <../braille-letter.scad>
use <../puzzle-base.scad>

spacing = 2.5;
distance = 3.75 + spacing;     
plate_height = 10;
plate_thickness = 2;

module base() {
	puzzle_base(
			plate_height + 2*plate_thickness,
			distance + 2*plate_thickness,
			plate_thickness,
			(distance + 2*plate_thickness)/2.3);
};

translate([ 0,  0, 0])
	base();
translate([21, 0, 0])
	base();
translate([ 0, 17, 0])
	base();
translate([21, 17, 0])
	base();

use <braille-letter.scad>
translate([0, 35, plate_height])
	rotate([90, 90, 0])
	braille_str("ABCD");

