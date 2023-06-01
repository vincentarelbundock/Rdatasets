.. container::

   =========== ===============
   H.virescens R Documentation
   =========== ===============

   .. rubric:: Mortality of tobacco budworms
      :name: H.virescens

   .. rubric:: Description
      :name: description

   For three days, moths of the tobacco budworm (*Heliothis virescens*)
   were exposed to doses of the pyrethroid trans-cypermethrin.

   .. rubric:: Usage
      :name: usage

   ::

      data(H.virescens)

   .. rubric:: Format
      :name: format

   A data frame with 12 observations on the following 4 variables.

   ``dose``
      a numeric vector of dose values (``\mu g``)

   ``numdead``
      a numeric vector of dead or knocked-down moths

   ``total``
      a numeric vector of total number of moths

   ``sex``
      a factor with levels ``F`` ``M`` denoting a grouping according to
      sex

   .. rubric:: Details
      :name: details

   In Venables and Ripley (2002), these data are analysed using a
   logistic regression with base-2 logarithm of dose as explanatory
   variable.

   .. rubric:: Source
      :name: source

   Venables, W. N. and Ripley, B. D (2002) *Modern Applied Statistics
   with S*, New York: Springer (fourth edition).

   .. rubric:: Examples
      :name: examples

   ::

      ## Fitting dose-response model (log-logistic with common slope)
      Hv.m1 <- drm(numdead/total~dose, sex, weights = total, data = H.virescens, fct = LL.2(), 
      pmodels = list(~ 1, ~ sex - 1), type = "binomial")
      summary(Hv.m1)

      ## Fitting the same model as in Venables and Riply (2002)
      Hv.m2 <- glm(cbind(numdead, total-numdead) ~ sex + I(log2(dose)) - 1, data = H.virescens, 
      family = binomial)

      ## Comparing the fits
      logLik(Hv.m1)
      logLik(Hv.m2)

      ## Estimated ED values (matching those given in MASS)
      ED(Hv.m1, c(25, 50, 75))
