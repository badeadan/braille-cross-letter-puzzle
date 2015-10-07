use <../braille-letter.scad>

use <braille-letter.scad>
translate([0, 0, 0])
	rotate([90, 90, 0])
	braille_str("ABCD", 10);

