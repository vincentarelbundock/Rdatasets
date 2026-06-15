==== ===============
Mice R Documentation
==== ===============

Mice Depletion Data
-------------------

Description
~~~~~~~~~~~

Data from Kastenbaum and Lamphiear (1959). The table gives the number of
depletions (deaths) in 657 litters of mice, classified by litter size
and treatment. This data set has become a classic in the analysis of
contingency tables, yet unfortunately little information on the details
of the experiment has been published.

Format
~~~~~~

A frequency data frame with 30 observations on the following 4
variables, representing a 5 x 2 x 3 contingency table.

``litter``
   litter size, a numeric vector

``treatment``
   treatment, a factor with levels ``A`` ``B``

``deaths``
   number of depletions, a factor with levels ``0`` ``1`` ``⁠2+⁠``

``Freq``
   cell frequency, a numeric vector

Source
~~~~~~

Goodman, L. A. (1983) The analysis of dependence in
cross-classifications having ordered categories, using log-linear models
for frequencies and log-linear models for odds. *Biometrics*, 39,
149-160.

References
~~~~~~~~~~

Kastenbaum, M. A. & Lamphiear, D. E. (1959) Calculation of chi-square to
calculate the no three-factor interaction hypothesis. *Biometrics*, 15,
107-115.

Examples
~~~~~~~~

.. code:: R


   data(Mice)
   # make a table
   ftable(mice.tab <- xtabs(Freq ~ litter + treatment + deaths, data=Mice))

   #library(vcd)
   vcd::mosaic(mice.tab, shade=TRUE)
