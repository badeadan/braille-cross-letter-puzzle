# Braille cross letter puzzle

## Description 

The idea is to make one of these suitable for Braille users.

![](doc/p26.jpg)

## Plan

The plan is to build an underlying puzzle-like structure of frames used to hold Braille letters.

Puzzle:

- base element prototype:

  ![](doc/puzzle-base.png)

- letter block:

  ![](doc/puzzle-letter-block.png)

## TODO

### investigate how to generate letters (in progress)

Use [OpenSCAD grade2 braille font module](http://www.thingiverse.com/thing:74358). It looks like this:   ![](doc/jaqtikkun-braille-module.png).

See [3rd-party/uploads-61-31-b9-e3-34-braille.scad](3rd-party/uploads-61-31-b9-e3-34-braille.scad)

Modified braille.scad file to generate rows of letters. See [braille-letter.scad](braille-letter.scad)

![](doc/braille-alphabet.png)

### parametric letter block

### parametric puzzle-base (in progress)

Switched puzzle\_base from using absolute value to parameters.

  ![](doc/puzzle-base-param.png)

Imported Braille letter fits perfectly.

  ![](doc/puzzle-base-param-fit.png)


