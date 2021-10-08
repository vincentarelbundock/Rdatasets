.. container::

   ========= ===============
   SiegelsEx R Documentation
   ========= ===============

   .. rubric:: Siegel's Exact Fit Example Data
      :name: siegels-exact-fit-example-data

   .. rubric:: Description
      :name: description

   A small counterexample data set devised by Andrew Siegel. Six (out of
   nine) data points lie on the line *y = 0* such that some robust
   regression estimators exhibit the “\ *exact fit*\ ” property.

   .. rubric:: Usage
      :name: usage

   ::

      data(SiegelsEx, package="robustbase")

   .. rubric:: Format
      :name: format

   A data frame with 9 observations on the following 2 variables.

   ``x``
      a numeric vector

   ``y``
      a numeric vector

   .. rubric:: Source
      :name: source

   Emerson and Hoaglin (1983, p.139)

   .. rubric:: References
      :name: references

   Peter J. Rousseeuw and Annick M. Leroy (1987) *Robust Regression and
   Outlier Detection* Wiley, p.60–61

   .. rubric:: Examples
      :name: examples

   ::

      data(SiegelsEx)
      plot(SiegelsEx, main = "Siegel's example for 'exact fit'")
      abline(          lm(y ~ x, data = SiegelsEx))
      abline(MASS::lqs(y ~ x, data = SiegelsEx, method = "lms"), col = 2)
      legend("topright", leg = c("lm", "LMS"), col=1:2, lwd=1, inset = 1/20)
