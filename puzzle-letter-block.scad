use <braille-letter.scad>
use <puzzle-base.scad>

spacing = 2.5;
distance = 5 + spacing;     
plate_height = 14;
plate_thickness = 2;
border = 1;

letters=[
	/* batch 0 */
	"AAAA",
	"ABBB",
	"BBCC",
	"CCCC",

	/* batch 1 */
	"CCCC",
	"DDDD",
	"EEEE",
	"EEEE",

	/* batch 2 */
	"EEEE",
	"EEEF",
	"FFFG",
	"GGGH",

	/* batch 3 */
	"IIII",
	"IIII",
	"IIII",
	"IIIJ",

	/* batch 4 */
	"KLLL",
	"LLLL",
	"LLLM",
	"MMMM",

	/* batch 5 */
	"NNNN",
	"NOOO",
	"OOOO",
	"OOOP",

	/* batch 6 */
	"PPPP",
	"RRRR",
	"RRRR",
	"RRSS",

	/* batch 7 */
	"SSSS",
	"SSSS",
	"SSTT",
	"TTTT",

	/* batch 8 */
	"TTTT",
	"UUUU",
	"UUVV",
	"XZZZ",

	/* extra batch 9 */
	"RRRR",
	"RRRR",
	"RPPP",
	"SSSS"
];

batch=9;

if ((batch*4+0)<len(letters)) {
	translate([0, 0*(distance+spacing), plate_height])
		rotate([90, 90, 180])
		braille_str(letters[batch*4+0], extra_space=2);
}

if ((batch*4+1)<len(letters)) {
	translate([0, 1*(distance+spacing), plate_height])
		rotate([90, 90, 180])
		braille_str(letters[batch*4+1], extra_space=2);
}

if ((batch*4+2)<len(letters)) {
	translate([0, 2*(distance+spacing), plate_height])
		rotate([90, 90, 180])
		braille_str(letters[batch*4+2], extra_space=2);
}

if ((batch*4+3)<len(letters)) {
	translate([0, 3*(distance+spacing), plate_height])
		rotate([90, 90, 180])
		braille_str(letters[batch*4+3], extra_space=2);
}
