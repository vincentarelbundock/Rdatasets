===== ===============
cps71 R Documentation
===== ===============

Canadian High School Graduate Earnings
--------------------------------------

Description
~~~~~~~~~~~

Canadian cross-section wage data consisting of a random sample taken
from the 1971 Canadian Census Public Use Tapes for male individuals
having common education (grade 13). There are 205 observations in total.

Usage
~~~~~

.. code:: R

   data("cps71")

Format
~~~~~~

A data frame with 2 columns, and 205 rows.

logwage
   the first column, of type ``numeric``

age
   the second column, of type ``integer``

Source
~~~~~~

Aman Ullah

References
~~~~~~~~~~

Pagan, A. and A. Ullah (1999), *Nonparametric Econometrics,* Cambridge
University Press.

Examples
~~~~~~~~

.. code:: R

   data("cps71", package = "np")

   if (interactive()) with(cps71, plot(age, logwage, xlab="Age", ylab="log(wage)"))
