
module connector(s, h) {
	linear_extrude(height=h)  {
		difference() {
			hull() {
				circle(d=s/2, $fn=20);
				translate([s/2,0,0])
					circle(d=s, $fn=20);
			};
			translate([-s/2,0,0])
				square(size=[s,s], center=true);
		}
	}
}

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

	difference() {

		union() {
			cube([l, w, h], center=false);

			translate([0.01, w/2, 0])
				rotate([0, 0, 180])
				connector(c, h);

			translate([c/2+c_offset, 0.01, 0])
				rotate([0, 0, -90])
				 connector(c, h);

			translate([0, 0, h])
				corner(c_width, h);

			translate([l, 0, h])
				rotate([0, 0, 90])
				corner(c_width, h);

			translate([l, w, h])
				rotate([0, 0, 180])
				corner(c_width, h);

			translate([0, w, h])
				rotate([0, 0, -90])
				corner(c_width, h);
		}

		translate([c/2+c_offset, w+0.01, 0])
			rotate([0, 0, -90])
		    connector(c, h);

		translate([l+0.01, w/2, 0])
			rotate([0, 0, 180])
			connector(c, h);
	}
}

spacing = 2.5;
distance = 3.75 + spacing;     
plate_height = 10;
plate_thickness = 2;

puzzle_base(
	plate_height + 2*plate_thickness,
	distance + 2*plate_thickness,
	plate_thickness,
	(distance + 2*plate_thickness)/2.3);

use <braille-letter.scad>
translate([plate_thickness, plate_thickness, plate_thickness])
	* braille_letter("A");
