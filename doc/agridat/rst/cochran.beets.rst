============= ===============
cochran.beets R Documentation
============= ===============

Yield and number of plants in a sugarbeet fertilizer experiment
---------------------------------------------------------------

Description
~~~~~~~~~~~

Yield and number of plants in a sugarbeet fertilizer experiment.

Usage
~~~~~

.. code:: R

   data("cochran.beets")

Format
~~~~~~

A data frame with 42 observations on the following 4 variables.

``fert``
   fertilizer treatment

``block``
   block

``yield``
   yield, tons/acres

``plants``
   number of plants per plot

Details
~~~~~~~

Yield (tons/acre) and number of beets per plot. Fertilizer treatments
combine superphosphate (P), muriate of potash (K), and sodium nitrate
(N).

Source
~~~~~~

George Snedecor (1946). *Statisitcal Methods*, 4th ed. Table 12.13, p.
332.

References
~~~~~~~~~~

H. Fairfield Smith (1957). Interpretation of Adjusted Treatment Means
and Regressions in Analysis of Covariance. *Biometrics*, 13, 282-308.
https://doi.org/10.2307/2527917

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)
   data(cochran.beets)
   dat = cochran.beets

   # P has strong effect
   libs(lattice)
   xyplot(yield ~ plants|fert, dat, main="cochran.beets") 


   ## End(Not run)
