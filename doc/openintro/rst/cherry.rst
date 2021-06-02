====== ===============
cherry R Documentation
====== ===============

Summary information for 31 cherry trees
---------------------------------------

Description
~~~~~~~~~~~

Researchers wanting to understand the relationship between these
variables for black cherry trees collected data from 31 trees in the
Allegheny National Forest, Pennsylvania.

Usage
~~~~~

::

   cherry

Format
~~~~~~

A data frame with 31 observations on the following 3 variables.

diam
   diameter in inches (at 54 inches above ground)

height
   height is measured in feet

volume
   volume in cubic feet

Source
~~~~~~

D.J. Hand. A handbook of small data sets. Chapman & Hall/CRC, 1994.

Examples
~~~~~~~~

::


   library(ggplot2)
   library(broom)

   ggplot(cherry, aes(x = diam, y = volume)) +
     geom_point() +
     geom_smooth(method = "lm")

   mod <- lm(volume ~ diam + height, cherry)
   tidy(mod)

