.. container::

   ============ ===============
   NOxEmissions R Documentation
   ============ ===============

   .. rubric:: NOx Air Pollution Data
      :name: NOxEmissions

   .. rubric:: Description
      :name: description

   A typical medium sized environmental data set with hourly
   measurements of ``NOx`` pollution content in the ambient air.

   .. rubric:: Usage
      :name: usage

   ::

      data(NOxEmissions, package="robustbase")

   .. rubric:: Format
      :name: format

   A data frame with 8088 observations on the following 4 variables.

   ``julday``
      day number, a factor with levels ``373`` ... ``730``, typically
      with 24 hourly measurements.

   ``LNOx``
      ``\log`` of hourly mean of NOx concentration in ambient air [ppb]
      next to a highly frequented motorway.

   ``LNOxEm``
      ``\log`` of hourly sum of NOx emission of cars on this motorway in
      arbitrary units.

   ``sqrtWS``
      Square root of wind speed [m/s].

   .. rubric:: Details
      :name: details

   The original data set had more observations, but with missing values.
   Here, all cases with missing values were omitted (``na.omit(.)``),
   and then only those were retained that belonged to days with at least
   20 (fully) observed hourly measurements.

   .. rubric:: Source
      :name: source

   René Locher (at ZHAW, Switzerland).

   .. rubric:: See Also
      :name: see-also

   another NOx dataset, ``ambientNOxCH``.

   .. rubric:: Examples
      :name: examples

   ::

      data(NOxEmissions)
      plot(LNOx ~ LNOxEm, data = NOxEmissions, cex = 0.25, col = "gray30")

      ## Not run: ## these take too much time --
       ## p = 340  ==> already Least Squares is not fast
       (lmNOx <- lm(LNOx ~ . ,data = NOxEmissions))
       plot(lmNOx) #->  indication of 1 outlier

       M.NOx <- MASS::rlm(LNOx ~ . , data = NOxEmissions)
       ## M-estimation works
       ## whereas  MM-estimation fails:
       try(MM.NOx <- MASS::rlm(LNOx ~ . , data = NOxEmissions, method = "MM"))
       ## namely because S-estimation fails:
       try(lts.NOx <- ltsReg(LNOx ~ . , data = NOxEmissions))
       try(lmR.NOx <- lmrob (LNOx ~ . , data = NOxEmissions))

      ## End(Not run)
