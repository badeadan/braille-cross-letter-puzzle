## Tasks

### DONE investigate how to generate letters (in progress) 

Use [OpenSCAD grade2 braille font module](http://www.thingiverse.com/thing:74358). It looks like this:   ![](doc/jaqtikkun-braille-module.png).

See [3rd-party/uploads-61-31-b9-e3-34-braille.scad](3rd-party/uploads-61-31-b9-e3-34-braille.scad)

Modified braille.scad file to generate rows of letters. See [braille-letter.scad](braille-letter.scad)

![](doc/braille-alphabet.png)

### DONE parametric letter block

### DONE parametric puzzle-base (in progress)

Switched puzzle\_base from using absolute value to parameters.

  ![](doc/puzzle-base-param.png)

Imported Braille letter fits perfectly.

  ![](doc/puzzle-base-param-fit.png)

Created a test for puzzle-base and braille-letter:

  ![](doc/puzzle-test.png)

Aborted print due to a filament problem. Partial results:

  ![](doc/2015-02-21_003334.png)

Puzzle connectors need to be adjusted as they don't fit easily:

  ![](doc/puzzle-base-interlock.png)

### DONE change letter size

### DONE use better connectors

Based on [Creating cookie cutters using offsets (and minkowski sums) in OpenSCAD to make your honey happy](http://blog.cubehero.com/2013/12/31/creating-cookie-cutters-using-offsets-in-openscad/)

### DONE Print letters

- A 5
- B 5
- C 10
- D 4
- E 15
- F 4
- G 4
- H 1
- I 15
- J 1
- K 1
- L 10
- M 5
- N 5
- O 10
- P 5
- R 10
- S 12
- T 10
- U 6
- V 2
- X 1
- Z 3

(144 letters)

And to convert that to strings:
    
	#!/usr/bin/python
	
	letters="""
	- A 5
	- B 5
	- C 10
	- D 4
	- E 15
	- F 4
	- G 4
	- H 1
	- I 15
	- J 1
	- K 1
	- L 10
	- M 5
	- N 5
	- O 10
	- P 5
	- R 10
	- S 12
	- T 10
	- U 6
	- V 2
	- X 1
	- Z 3
	"""
	p="".join([y*int(z) for (x,y,z) in [l.split() for l in letters.split("\n") if len(l)]])
	print "\n".join([p[i:i+4] for i in range(0,len(p),4)])

Result:

	AAAA
	ABBB
	BBCC
	CCCC
	CCCC
	DDDD
	EEEE
	EEEE
	EEEE
	EEEF
	FFFG
	GGGH
	IIII
	IIII
	IIII
	IIIJ
	KLLL
	LLLL
	LLLM
	MMMM
	NNNN
	NOOO
	OOOO
	OOOP
	PPPP
	RRRR
	RRRR
	RRSS
	SSSS
	SSSS
	SSTT
	TTTT
	TTTT
	UUUU
	UUVV
	XZZZ