module connector(s, h) {
	linear_extrude(height=h, center=true)  {
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

module puzzle_base() {
	difference() {

		union() {
			difference() {
				translate([-5,-5,-0.5])
					cube([10,15,2], center=false);
				translate([-4,-4,+0.5])
					cube([8,13,2], center=false);
				translate([-5,-2,+0.5])
					cube([10,9,2], center=false);
				translate([-2,-5,+0.5])
					cube([4,15,2], center=false);
			}

			translate([4.99,0,0])
				connector(5,1);

			translate([0,-4.99,0])
				rotate([0,0,-90])
				connector(5,1);
		}

		translate([0,10.01,0])
			rotate([0,0,-90])
			connector(5,1);

		translate([-5.01,0,0])
			connector(5,1);
	}
}

puzzle_base();

