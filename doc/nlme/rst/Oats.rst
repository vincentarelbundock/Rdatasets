==== ===============
Oats R Documentation
==== ===============

Split-plot Experiment on Varieties of Oats
------------------------------------------

Description
~~~~~~~~~~~

The ``Oats`` data frame has 72 rows and 4 columns.

Format
~~~~~~

This data frame contains the following columns:

Block
   an ordered factor with levels ``VI`` < ``V`` < ``III`` < ``IV`` <
   ``II`` < ``I``

Variety
   a factor with levels ``Golden Rain`` ``Marvellous`` ``Victory``

nitro
   a numeric vector

yield
   a numeric vector

Details
~~~~~~~

These data have been introduced by Yates (1935) as an example of a
split-plot design. The treatment structure used in the experiment was a
``3 \times 4`` full factorial, with three varieties of oats and four
concentrations of nitrogen. The experimental units were arranged into
six blocks, each with three whole-plots subdivided into four subplots.
The varieties of oats were assigned randomly to the whole-plots and the
concentrations of nitrogen to the subplots. All four concentrations of
nitrogen were used on each whole-plot.

Source
~~~~~~

Pinheiro, J. C. and Bates, D. M. (2000), *Mixed-Effects Models in S and
S-PLUS*, Springer, New York. (Appendix A.15)

Venables, W. N. and Ripley, B. D. (2002) *Modern Applied Statistics with
S. (4th ed)*, Springer, New York.
