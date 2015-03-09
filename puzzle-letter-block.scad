use <braille-letter.scad>
use <puzzle-base.scad>

spacing = 2.5;
distance = 5 + spacing;     
plate_height = 14;
plate_thickness = 2;
border = 1;

translate([0, 0*(distance+spacing), plate_height])
	rotate([90, 90, 180])
	braille_str("EEEEE", extra_space=2);

translate([0, 1*(distance+spacing), plate_height])
	rotate([90, 90, 180])
	braille_str("IIIII", extra_space=2);

translate([0, 2*(distance+spacing), plate_height])
	rotate([90, 90, 180])
	braille_str("OOOOO", extra_space=2);

translate([0, 3*(distance+spacing), plate_height])
	rotate([90, 90, 180])
	braille_str("UUUUU", extra_space=2);

translate([0, 4*(distance+spacing), plate_height])
	rotate([90, 90, 180])
	braille_str("XXZZJ", extra_space=2);
               
