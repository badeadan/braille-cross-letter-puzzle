radius = 0.8;
spacing = 2.5;
distance = 5 + spacing;

plate_height = 14;
plate_thickness = 5;

$fn = 20;

module letter(bitmap) {
	row_size = 2;
	col_size = 3;
	bitmap_size = row_size * col_size;
	
	function loc_x(loc) = floor(loc / row_size) * spacing + spacing;
	function loc_y(loc) = loc % row_size * spacing  + (distance-spacing)/2;

	for (loc = [0:bitmap_size - 1]) {
		if (bitmap[loc] != 0) {
			union() {
				echo(loc_y(loc));
				translate(v = [loc_x(loc), loc_y(loc), 0]) {
					sphere(radius* bitmap[loc], center = true);
				}
			}
		}
	}
}


module braille_char(char) {
	if (char == "A") {
		letter([
			1,0,
			0,0,
			0,0
		]);
	} else if (char == "B") {
		letter([
			1,0,
			1,0,
			0,0
		]);
	} else if (char == "C") {
		letter([
			1,1,
			0,0,
			0,0
		]);
	} else if (char == "D") {
		letter([
			1,1,
			0,1,
			0,0
		]);
	} else if (char == "E") {
		letter([
			1,0,
			0,1,
			0,0
		]);
	} else if (char == "F") {
		letter([
			1,1,
			1,0,
			0,0
		]);
	} else if (char == "G") {
		letter([
			1,1,
			1,1,
			0,0
		]);
	} else if (char == "H") {
		letter([
			1,0,
			1,1,
			0,0
		]);
	} else if (char == "I") {
		letter([
			0,1,
			1,0,
			0,0
		]);
	} else if (char == "J") {
		letter([
			0,1,
			1,1,
			0,0
		]);
	} else if (char == "K") {
		letter([
			1,0,
			0,0,
			1,0
		]);
	} else if (char == "L") {
		letter([
			1,0,
			1,0,
			1,0
		]);
	} else if (char == "M") {
		letter([
			1,1,
			0,0,
			1,0
		]);
	} else if (char == "N") {
		letter([
			1,1,
			0,1,
			1,0
		]);
	} else if (char == "O") {
		letter([
			1,0,
			0,1,
			1,0
		]);
	} else if (char == "P") {
		letter([
			1,1,
			1,0,
			1,0
		]);
	} else if (char == "Q") {
		letter([
			1,1,
			1,1,
			1,0
		]);
	} else if (char == "R") {
		letter([
			1,0,
			1,1,
			1,0
		]);
	} else if (char == "S") {
		letter([
			0,1,
			1,0,
			1,0
		]);
	} else if (char == "T") {
		letter([
			0,1,
			1,1,
			1,0
		]);
	} else if (char == "U") {
		letter([
			1,0,
			0,0,
			1,1
		]);
	} else if (char == "V") {
		letter([
			1,0,
			1,0,
			1,1
		]);
	} else if (char == "W") {
		letter([
			0,1,
			1,1,
			0,1
		]);
	} else if (char == "X") {
		letter([
			1,1,
			0,0,
			1,1
		]);
	} else if (char == "Y") {
		letter([
			1,1,
			0,1,
			1,1
		]);
	} else if (char == "Z") {
		letter([
			1,0,
			0,1,
			1,1
		]);
	} else if (char == "CH") {
		letter([
			1,0,
			0,0,
			0,1
		]);
	} else if (char == "SH") {
		letter([
			1,1,
			0,0,
			0,1
		]);
	} else if (char == "TH") {
		letter([
			1,1,
			0,1,
			0,1
		]);
	} else if (char == "WH") {
		letter([
			1,0,
			0,1,
			0,1
		]);
	} else if (char == "OU") {
		letter([
			1,0,
			1,1,
			0,1
		]);
	} else if (char == "ST") {
		letter([
			0,1,
			0,0,
			1,0
		]);
	} else if (char == "AND") {
		letter([
			1,1,
			1,0,
			1,1
		]);
	} else if (char == "FOR") {
		letter([
			1,1,
			1,1,
			1,1
		]);
	} else if (char == "OF") {
		letter([
			1,0,
			1,1,
			1,1
		]);
	} else if (char == "THE") {
		letter([
			0,1,
			1,0,
			1,1
		]);
	} else if (char == "WITH") {
		letter([
			0,1,
			1,1,
			1,1
		]);
	} else if (char == "IN") {
		letter([
			0,0,
			0,1,
			1,0
		]);
	} else if (char == "EN") {
		letter([
			0,0,
			1,0,
			0,1
		]);
	} else if (char == "CON") {
		letter([
			0,0,
			1,1,
			0,0
		]);
	} else if (char == "DIS") {
		letter([
			0,0,
			1,1,
			0,1
		]);
	} else if (char == "COM") {
		letter([
			0,0,
			0,0,
			1,1
		]);
	} else if (char == "BE") {
		letter([
			0,0,
			1,0,
			1,0
		]);
	} else if (char == "EA") {
		letter([
			0,0,
			1,0,
			0,0
		]);
	} else if (char == "BB") {
		letter([
			0,0,
			1,0,
			1,0
		]);
	} else if (char == "CC") {
		letter([
			0,0,
			1,1,
			0,0
		]);
	} else if (char == "DD") {
		letter([
			0,0,
			1,1,
			0,1
		]);
	} else if (char == "FF") {
		letter([
			0,0,
			1,1,
			1,0
		]);
	} else if (char == "GG") {
		letter([
			0,0,
			1,1,
			1,1
		]);
	} else if (char == "AR") {
		letter([
			0,1,
			0,1,
			1,0
		]);
	} else if (char == "BLE") {
		letter([
			0,1,
			0,1,
			1,1
		]);
	} else if (char == "ED") {
		letter([
			1,1,
			1,0,
			0,1
		]);
	} else if (char == "ER") {
		letter([
			1,1,
			1,1,
			0,1
		]);
	} else if (char == "GH") {
		letter([
			1,0,
			1,0,
			0,1
		]);
	} else if (char == "ING") {
		letter([
			0,1,
			0,0,
			1,1
		]);
	} else if (char == "OW") {
		letter([
			0,1,
			1,0,
			0,1
		]);
	} else if (char == "cap") {
		letter([
			0,0,
			0,0,
			0,1
		]);
	} else if (char == "#") {
		letter([
			0,1,
			0,1,
			1,1
		]);
	} else if (char == "let") {
		letter([
			0,0,
			0,1,
			0,1
		]);
	} else if (char == ".") {
		letter([
			0,0,
			1,1,
			0,1
		]);
	} else if (char == "?") {
		letter([
			0,0,
			1,0,
			1,1
		]);
	} else if (char == "!") {
		letter([
			0,0,
			1,1,
			1,0
		]);
	} else if (char == "-") {
		letter([
			0,0,
			0,0,
			1,1
		]);
	} else if (char == "quote") {
		letter([
			0,0,
			0,1,
			1,1
		]);
	} else if (char == "1") {
		letter([
			1,0,
			0,0,
			0,0
		]);
	} else if (char == "2") {
		letter([
			1,0,
			1,0,
			0,0
		]);
	} else if (char == "3") {
		letter([
			1,1,
			0,0,
			0,0
		]);
	} else if (char == "4") {
		letter([
			1,1,
			0,1,
			0,0
		]);
	} else if (char == "5") {
		letter([
			1,0,
			0,1,
			0,0
		]);
	} else if (char == "6") {
		letter([
			1,1,
			1,0,
			0,0
		]);
	} else if (char == "7") {
		letter([
			1,1,
			1,1,
			0,0
		]);
	} else if (char == "8") {
		letter([
			1,0,
			1,1,
			0,0
		]);
	} else if (char == "9") {
		letter([
			0,1,
			1,0,
			0,0
		]);
	} else if (char == "0") {
		letter([
			0,1,
			1,1,
			0,0
		]);
	} else {
		echo("Invalid Character: ", char);
	}

}

module braille_letter(char) {
	union() {
		translate([0,0,plate_thickness])
			braille_char(char);
		color([0,0,1]) {
			cube([plate_height, distance, plate_thickness]);
		}
	}
}

module braille_str(chars, extra_space) {
	union() {
		for (count = [0:len(chars)-1]) {
			translate(v = [0, count * (distance+spacing+extra_space), plate_thickness]) {
				braille_letter(chars[count]);
			}
		}
	}
}

module braille_alphabet() {

	translate([0,0,-plate_thickness*5*0])
		braille_str("ABCDEF", 6);

	translate([0,0,-plate_thickness*5*1])
		braille_str("GHIJKL", 6);

	translate([0,0,-plate_thickness*5*2])
		braille_str("MNOPQR", 6);

	translate([0,0,-plate_thickness*5*3])
		braille_str("STUVWX", 6);

	translate([0,0,-plate_thickness*5*4])
		braille_str("YZ", 6);

}

translate([-plate_height/2, -(distance+spacing)*3+spacing/2, 0])
	braille_alphabet();

