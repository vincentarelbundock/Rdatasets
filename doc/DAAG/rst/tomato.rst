====== ===============
tomato R Documentation
====== ===============

Root weights of tomato plants exposed to 4 different treatments
---------------------------------------------------------------

Description
~~~~~~~~~~~

The ``tomato`` data frame has 24 rows and 2 columns. They are from an
experiment that exposed tomato plants to four different 'nutrients'.

Usage
~~~~~

::

   data(tomato)

Format
~~~~~~

This data frame contains the following columns:

weight
   weight, in g

trt
   a factor with levels ``water only``, ``conc nutrient``,
   ``2-4-D + conc nutrient``, ``3x conc nutrient``

Source
~~~~~~

Dr Ron Balham, Victoria University of Wellington NZ, sometime in 1971 -
1976.

Examples
~~~~~~~~

::

   tomato.aov <- aov(log(weight) ~ trt, data=tomato)
   fitted.values(tomato.aov)
   summary.lm(tomato.aov)
   tomato.aov <- aov(formula = weight ~ trt, data = tomato)
   summary.lm(tomato.aov)
