use <puzzle-connector.scad>

module corner_slope(l, h) {
	cube([l, h, h/2]); 
	cube([l, h/2, h]); 

	translate([0,l,0]) 
		rotate([0, 0, -90]) {
			cube([l, h, h/2]); 
			cube([l, h/2, h]); 
		}
}

module corner(l, h) {
	cube([l, h, h]); 

	translate([0,l,0]) 
		rotate([0, 0, -90]) {
			cube([l, h, h]); 
		}
}

module puzzle_base(l, w, h, c) {

	c_offset = (l-c*1.8)/2;
	c_width = (w - c)/2;
	c_scale = (c+0.3)/c;

	difference() {

		union() {
			cube([l, w, h], center=false);

			translate([0.01, w/2, 0])
				rotate([0, 0, 180])
				puzzle_connector_pear(c, h, 0, [h/2, h/2]);

			translate([c/2+c_offset, 0.01, 0])
				rotate([0, 0, -90])
				puzzle_connector_pear(c, h, 0, [h/2, h/2]);

			translate([0, 0, h]) {
				difference() {
					cube([l, w, h/2], center=false);
					translate([h/2, h/2, 0])
						cube([l-h, w-h, h], center=false);
				}
			}
		}

		translate([c/2+c_offset, w+0.2, 0])
			rotate([0, 0, -90])
		    puzzle_connector_pear(c, h*2, -0.2);

		translate([l+0.2, w/2, 0])
			rotate([0, 0, 180])
			puzzle_connector_pear(c, h*2, -0.2);
	}
}

spacing = 2.5;
distance = 3.75 + spacing;     
plate_height = 10;
plate_thickness = 2;

translate([0, 0, 0])
puzzle_base(
	plate_height + 2*plate_thickness,
	distance + 2*plate_thickness,
	plate_thickness,
	(distance + 2*plate_thickness)/2.3);

translate([plate_height+2*plate_thickness+0.2, 0, 0])
puzzle_base(
	plate_height + 2*plate_thickness,
	distance + 2*plate_thickness,
    plate_thickness,
	(distance + 2*plate_thickness)/2.3);

translate([0, distance + 2*plate_thickness+0.2, 0])
puzzle_base(
	plate_height + 2*plate_thickness,
	distance + 2*plate_thickness,
	plate_thickness,
	(distance + 2*plate_thickness)/2.3);

translate([plate_height+2*plate_thickness+0.2, distance + 2*plate_thickness+0.2, 0])
puzzle_base(
	plate_height + 2*plate_thickness,
	distance + 2*plate_thickness,
    plate_thickness,
	(distance + 2*plate_thickness)/2.3);

//use <braille-letter.scad>
//translate([plate_thickness, plate_thickness, plate_thickness])
//	* braille_letter("A");
