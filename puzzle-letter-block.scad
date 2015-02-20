use <puzzle-base.scad>

module puzzle_letter_block() {
	translate([-4,-4,+0.5])
		cube([8,13,2], center=false);
}

*puzzle_base();
puzzle_letter_block();

