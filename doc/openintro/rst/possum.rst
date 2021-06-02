====== ===============
possum R Documentation
====== ===============

possum
------

Description
~~~~~~~~~~~

Data representing possums in Australia and New Guinea. This is a copy of
the data set by the same name in the ``DAAG`` package, however, the data
set included here includes fewer variables.

Usage
~~~~~

::

   possum

Format
~~~~~~

A data frame with 104 observations on the following 8 variables.

site
   The site number where the possum was trapped.

pop
   Population, either ``Vic`` (Victoria) or ``other`` (New South Wales
   or Queensland).

sex
   Gender, either ``m`` (male) or ``f`` (female).

age
   Age.

head_l
   Head length, in mm.

skull_w
   Skull width, in mm.

total_l
   Total length, in cm.

tail_l
   Tail length, in cm.

Source
~~~~~~

Lindenmayer, D. B., Viggers, K. L., Cunningham, R. B., and Donnelly, C.
F. 1995. Morphological variation among columns of the mountain brushtail
possum, Trichosurus caninus Ogilby (Phalangeridae: Marsupiala).
Australian Journal of Zoology 43: 449-458.

Examples
~~~~~~~~

::


   library(ggplot2)

   ggplot(possum, aes(x = head_l, y = skull_w)) +
     geom_point()

   ggplot(possum, aes(x = total_l, fill = sex)) +
     geom_density(alpha = 0.5)

