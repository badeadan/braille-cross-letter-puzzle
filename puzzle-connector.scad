use <offset.scad>

module puzzle_connector_pear(diameter, height, inset=0, skirt=[0, 0]) {
	module connector(diameter, height, inset) {
		linear_extrude(height=height)  {
			difference() {
				hull() {
					circle(d=diameter/2-inset*2, $fn=20);
					translate([diameter/2,0,0])
						circle(d=diameter-inset*2, $fn=20);
				};
				translate([-diameter/2,0,0])
					square(size=[diameter,diameter], center=true);
			}
		}
	}
	if ((skirt[0] > 0) && (skirt[1] > 0)) {
		difference() {
			translate([0, 0, height])
				connector(diameter, skirt[0], inset);
			translate([skirt[1], -(diameter-inset*2)/2, height])
				cube([diameter-inset*2, diameter-inset*2, skirt[0]]);
		}
	}
	connector(diameter, height, inset);
}

module puzzle_connector_round(diameter, base, height, inset=0, skirt=[0, 0]) {
	module connector(diameter, base, height, inset) {
		translate([0, -base/2, 0])
			union() {
				linear_extrude(height=height) {
					translate([(diameter + base -inset)/2, base/2, 0])
						circle(d = diameter-inset*2, $fn=20);
					translate([0, inset*2, 0])
						square([base - inset*2, base - inset*4]);
				}
			}
	}
	if ((skirt[0] > 0) && (skirt[1] > 0)) {
		difference() {
			translate([0, 0, height])
				connector(diameter, base, skirt[0], inset);
			translate([skirt[1], -(diameter-inset*2)/2, height])
				cube([diameter+base-inset*2, diameter+base-inset*2, skirt[0]]);
		}
	}
	connector(diameter, base, height, inset);
}

difference() {
	puzzle_connector_round(5, 2.5, 2, -0.3, [1, 1]);
	puzzle_connector_round(5, 2.5, 2, 0, [1, 1]);
}

translate([0, 7, 0]) {
	difference() {
		puzzle_connector_pear(5, 2, -0.3, [1, 1]);
		puzzle_connector_pear(5, 2, 0, [1, 1]);
	}
}

