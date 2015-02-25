use <offset.scad>

$fn=20;

module connector_pear(s, h, inset=0) {
	linear_extrude(height=h)  {
		difference() {
			hull() {
				circle(d=s/2-inset*2, $fn=20);
				translate([s/2,0,0])
					circle(d=s-inset*2, $fn=20);
			};
			translate([-s/2,0,0])
				square(size=[s,s], center=true);
		}
	}
}

module connector_round(d, b, h, inset=0) {
	translate([0, -b/2, 0])
	union() {
		linear_extrude(height=h) {
			translate([(d+b/4)/2, b/2, 0])
				circle(d = d-inset*2);
			translate([0, inset, 0])
				square([b,b-inset*2]);
		}
	}
}

connector_round(5, 2.5, 2, -0.3);
# connector_round(5, 2.5, 2);

translate([0, 7, 0]) {
	connector_pear(5, 2, -0.3);
    # connector_pear(5, 2);
}


