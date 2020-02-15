*Introduction*

This repository is public because it would have been useful to me when I was
looking for examples of how to draw publication quality stemmas with xelatex
and tikz. It shows how to use a makefile and a few simple `.tex` files to
generate different stemmas.

It is possible to get started quickly in tikz by letting it handle the layout,
and this may be all you need, especially for small stemmas. But I have found
that in larger stemmas, and especially in ones in which the vertical axis is
used to convey approximate relative dates of manuscripts, it is better to
manually specify the coordinates of all the nodes.

The most helpful innovation here is that each stemma is produced twice: first
with a grid superimposed on the stemma and then again without. The grid makes
it significantly easier to tweak positioning and to collaborate with others. 

A few notes:

* The arrow style is defined in the header file

* Contamination is indicated with a dotted line, normal descent with an arrow


*Usage*

1. Make sure that `xelatex` is installed.
2. Run `make all`
3. pdfs should be in the stemmas directory

This has only been tested in on a mac.
