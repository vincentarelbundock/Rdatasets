.. container::

   ========== ===============
   methionine R Documentation
   ========== ===============

   .. rubric:: Weight gain for different methionine sources
      :name: weight-gain-for-different-methionine-sources

   .. rubric:: Description
      :name: description

   Data consist of average body weight gain of chickens being treated
   with one of the two methionine sources DLM and HMTBA.

   .. rubric:: Usage
      :name: usage

   ::

      data(methionine)

   .. rubric:: Format
      :name: format

   A data frame with 9 observations on the following 3 variables:

   ``product``
      a factor with levels ``control``, ``DLM`` and ``MHA`` denoting the
      treatments

   ``dose``
      a numeric vector of methionine dose

   ``gain``
      a numeric vector of average body weight gain

   .. rubric:: Details
      :name: details

   The dataset contains a common control measurement for the two
   treatments. More examples using this dataset are found under ``AR.2``
   and ``MM.2``.

   .. rubric:: Source
      :name: source

   Kratzer. D. D. and Littell, R. C. (2006) Appropriate Statistical
   Methods to Compare Dose Responses of Methionine Sources, *Poultry
   Science*, **85**, 947–954.

   .. rubric:: Examples
      :name: examples

   ::


      ## Fitting model with constraint on one parameter 
      met.ar.m1 <- drm(gain~dose, product, data = methionine, 
      fct = AR.3(), pmodels = list(~1, ~factor(product), ~factor(product)), 
      upperl = c(Inf, Inf, 1700, Inf, Inf)) 

      plot(met.ar.m1, xlim=c(0,0.3), ylim=c(1450, 1800))
      abline(h=1700, lty=1)

      summary(met.ar.m1)

