use <puzzle-connector.scad>

module puzzle_base(l, w, h, c, b=[0, 0]) {

	c_offset = (l-c*2)/2;
	c_width = (w - c)/2;

	difference() {

		union() {
			cube([l, w, h], center=false);

			translate([0.01, w/2, 0])
				rotate([0, 0, 180])
				puzzle_connector_round(c, c/1.8, h, 0, [b[1], b[0]]);

			translate([c/2+c_offset, 0.01, 0])
				rotate([0, 0, -90])
				puzzle_connector_round(c, c/1.8, h, 0, [b[1], b[0]]);

			translate([0, 0, h]) {
				difference() {
					cube([l, w, b[1]], center=false);
					translate([b[0], b[0], 0])
						cube([l-2*b[0], w-2*b[0], b[1]], center=false);
				}
			}
		}

		translate([c/2+c_offset, w+0.1, 0])
			rotate([0, 0, -90])
		    puzzle_connector_round(c, c/2, h+b[1], -0.1);

		translate([l+0.2, w/2, 0])
			rotate([0, 0, 180])
			puzzle_connector_round(c, c/2, h+b[1], -0.1);
	}
}

spacing = 2.5;
distance = 5 + spacing;     
plate_height = 14;
plate_thickness = 5;
border=2;

translate([0, 0, 0])
puzzle_base(
	plate_height + 2*plate_thickness,
	distance + 2*plate_thickness,
	plate_thickness,
	(distance + 2*plate_thickness)/2.3,
	[border, border]);

translate([plate_height+2*plate_thickness+0.2, 0, 0])
puzzle_base(
	plate_height + 2*plate_thickness,
	distance + 2*plate_thickness,
    plate_thickness,
	(distance + 2*plate_thickness)/2.3,
	[border, border]);

translate([0, distance + 2*plate_thickness+0.2, 0])
puzzle_base(
	plate_height + 2*plate_thickness,
	distance + 2*plate_thickness,
	plate_thickness,
	(distance + 2*plate_thickness)/2.3,
	[border, border]);

translate([plate_height+2*plate_thickness+0.2, distance + 2*plate_thickness+0.2, 0])
puzzle_base(
	plate_height + 2*plate_thickness,
	distance + 2*plate_thickness,
    plate_thickness,
	(distance + 2*plate_thickness)/2.3, 
	[border, border]);

//use <braille-letter.scad>
//translate([plate_thickness, plate_thickness, plate_thickness])
//	* braille_letter("A");
