use <puzzle-base.scad>

spacing = 2.5;
distance = 5 + spacing;     
plate_height = 14;
plate_thickness = 2;
border = 1;

module base() {
	puzzle_base(
			plate_height + 2*border + 0.6,
			distance + 2*border + 0.2,
			plate_thickness,
			distance/1.5, 
			[border, border*3]);
};

module base_block() {
	translate([ 0,  0, 0])
		base();
	translate([26, 0, 0])
		base();
	translate([ 52, 0, 0])
		base();
}

translate([0, -19, 0])
	base_block();

translate([0, 0, 0])
	base_block();

translate([0, 19, 0])
	base_block();
