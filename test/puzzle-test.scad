use <../braille-letter.scad>
use <../puzzle-base.scad>

spacing = 2.5;
distance = 5 + spacing;     
plate_height = 14;
plate_thickness = 2;
border = 1;

for (i=[0:4]) {
	translate([0, i*(distance+spacing), plate_height])
		rotate([90, 90, 180])
		braille_str("AAAAA", extra_space=2);
}


