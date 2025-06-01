.. container::

   .. container::

      ============= ===============
      cochran.beets R Documentation
      ============= ===============

      .. rubric:: Yield and number of plants in a sugarbeet fertilizer
         experiment
         :name: yield-and-number-of-plants-in-a-sugarbeet-fertilizer-experiment

      .. rubric:: Description
         :name: description

      Yield and number of plants in a sugarbeet fertilizer experiment.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("cochran.beets")

      .. rubric:: Format
         :name: format

      A data frame with 42 observations on the following 4 variables.

      ``fert``
         fertilizer treatment

      ``block``
         block

      ``yield``
         yield, tons/acres

      ``plants``
         number of plants per plot

      .. rubric:: Details
         :name: details

      Yield (tons/acre) and number of beets per plot. Fertilizer
      treatments combine superphosphate (P), muriate of potash (K), and
      sodium nitrate (N).

      .. rubric:: Source
         :name: source

      George Snedecor (1946). *Statisitcal Methods*, 4th ed. Table
      12.13, p. 332.

      .. rubric:: References
         :name: references

      H. Fairfield Smith (1957). Interpretation of Adjusted Treatment
      Means and Regressions in Analysis of Covariance. *Biometrics*, 13,
      282-308. https://doi.org/10.2307/2527917

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(cochran.beets)
         dat = cochran.beets

         # P has strong effect
         libs(lattice)
         xyplot(yield ~ plants|fert, dat, main="cochran.beets") 


         ## End(Not run)
