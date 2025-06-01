.. container::

   .. container::

      ============ ===============
      crampton.pig R Documentation
      ============ ===============

      .. rubric:: Weight gain in pigs for different treatments
         :name: weight-gain-in-pigs-for-different-treatments

      .. rubric:: Description
         :name: description

      Weight gain in pigs for different treatments, with initial weight
      and feed eaten as covariates.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("crampton.pig")

      .. rubric:: Format
         :name: format

      A data frame with 50 observations on the following 5 variables.

      ``treatment``
         feed treatment

      ``rep``
         replicate

      ``weight1``
         initial weight

      ``feed``
         feed eaten

      ``weight2``
         final weight

      .. rubric:: Details
         :name: details

      A study of the effect of initial weight and feed eaten on the
      weight gaining ability of pigs with different feed treatments.

      The data are extracted from Ostle. It is not clear that
      'replicate' is actually a blocking replicate as opposed to a
      repeated measurement. The original source document needs to be
      consulted.

      .. rubric:: Source
         :name: source

      Crampton, EW and Hopkins, JW. (1934). The Use of the Method of
      Partial Regression in the Analysis of Comparative Feeding Trial
      Data, Part II. The Journal of Nutrition, 8, 113-123.
      https://doi.org/10.1093/jn/8.3.329

      .. rubric:: References
         :name: references

      Bernard Ostle. Statistics in Research, Page 458.
      https://archive.org/details/secondeditionsta001000mbp

      Goulden (1939). Methods of Statistical Analysis, 1st ed. Page
      256-259. https://archive.org/details/methodsofstatist031744mbp

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)

           data(crampton.pig)
           dat <- crampton.pig

           dat <- transform(dat, gain=weight2-weight1)
           libs(lattice)
           # Trt 4 looks best
           xyplot(gain ~ feed, dat, group=treatment, type=c('p','r'),
                  auto.key=list(columns=5),
                  xlab="Feed eaten", ylab="Weight gain", main="crampton.pig")
           
           # Basic Anova without covariates
           m1 <- lm(weight2 ~ treatment + rep, data=dat)
           anova(m1)
           # Add covariates
           m2 <- lm(weight2 ~ treatment + rep + weight1 + feed, data=dat)
           anova(m2)
           # Remove treatment, test this nested model for significant treatments
           m3 <- lm(weight2 ~ rep + weight1 + feed, data=dat)
           anova(m2,m3) # p-value .07. F=2.34 matches Ostle

         ## End(Not run)
