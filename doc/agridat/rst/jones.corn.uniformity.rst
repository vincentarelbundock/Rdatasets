===================== ===============
jones.corn.uniformity R Documentation
===================== ===============

Uniformity trial of corn.
-------------------------

Description
~~~~~~~~~~~

Uniformity trial of corn in Iowa in 2016.

Usage
~~~~~

.. code:: R

   data("jones.corn.uniformity")

Format
~~~~~~

A data frame with 144 observations on the following 3 variables.

``col``
   column ordinate

``row``
   row ordinate

``yield``
   yield, bu/ac

Details
~~~~~~~

This data corresponds to field "ISU.SE" in the paper by Jones.

Field width: 12 columns, 4.6 meters each.

Field length: 12 rows, 3 meters each.

Electronic version provided as an online supplement. The "row" and "col"
variables in the supplement have been swapped for the presentation of
the data here in order to be more consistent with the figures in the
paper.

The electronic supplemental data is in bu/ac, but the paper uses kg/ha.

Used with permission of Marcus Jones.

Source
~~~~~~

Jones, M., Harbur, M., & Moore, K. J. (2021). Automating Uniformity
Trials to Optimize Precision of Agronomic Field Trials. Agronomy, 11(6),
1254. https://doi.org/10.3390/agronomy11061254

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
   library(agridat)
   data(jones.corn.uniformity)
   dat <- jones.corn.uniformity
   library(desplot)
   # Compare to figure 5 of Jones et al.
   desplot(dat, yield ~ col*row,
           aspect=(12*4.6)/(12*3),
           main="jones.corn.uniformity")

   ## End(Not run)
