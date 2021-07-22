====== ===============
Galton R Documentation
====== ===============

Galton's dataset of parent and child heights
--------------------------------------------

Description
~~~~~~~~~~~

In the 1880's, Francis Galton was developing ways to quantify the
heritability of traits. As part of this work, he collected data on the
heights of adult children and their parents.

Usage
~~~~~

::

   data(Galton)

Format
~~~~~~

A data frame with 898 observations on the following variables.

-  ``family`` a factor with levels for each family

-  ``father`` the father's height (in inches)

-  ``mother`` the mother's height (in inches)

-  ``sex`` the child's sex: ``F`` or ``M``

-  ``height`` the child's height as an adult (in inches)

-  ``nkids`` the number of adult children in the family, or, at least,
   the number whose heights Galton recorded.

Details
~~~~~~~

Entries were deleted for those children whose heights were not recorded
numerically by Galton, who sometimes used entries such as "tall",
"short", "idiotic", "deformed" and so on.

Source
~~~~~~

The data were transcribed by J.A. Hanley who has published them at
http://www.medicine.mcgill.ca/epidemiology/hanley/galton/

References
~~~~~~~~~~

"Transmuting" women into men: Galton's family data on human stature.
(2004) *The American Statistician*, 58(3):237-243.

Examples
~~~~~~~~

::

   data(Galton)
