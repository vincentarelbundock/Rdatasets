.. container::

   ========= ===============
   fasttrakg R Documentation
   ========= ===============

   .. rubric:: fasttrakg
      :name: fasttrakg

   .. rubric:: Description
      :name: description

   Data are from the Canadian National Cardiovascular Disease registry
   called, FASTRAK. years covered at 1996-1998. They have been grouped
   by covariate patterns from individual observations.

   .. rubric:: Usage
      :name: usage

   ::

      data(fasttrakg)

   .. rubric:: Format
      :name: format

   A data frame with 15 observations on the following 9 variables.

   ``die``
      number died from MI

   ``cases``
      number of cases with same covariate pattern

   ``anterior``
      1=anterior site MI; 0=inferior site MI

   ``hcabg``
      1=history of CABG; 0=no history of CABG

   ``killip``
      Killip level of cardiac event severity (1-4)age75

   1= Age>75; 0=Age<=75

   ``kk1``
      (1/0) angina; not MI

   ``kk2``
      (1/0) moderate severity cardiac event

   ``kk3``
      (1/0) Severe cardiac event

   ``kk4``
      (1/0) Severe cardiac event; death

   .. rubric:: Details
      :name: details

   fasttrakg is saved as a data frame. Count models use died as response
   numerator and cases as the demoninator

   .. rubric:: Source
      :name: source

   1996-1998 FASTRAK data, Hoffman-LaRoche Canada, National Health
   Economics & Research Co.

   .. rubric:: References
      :name: references

   Hilbe, Joseph M (2007, 2011), Negative Binomial Regression, Cambridge
   University Press Hilbe, Joseph M (2009), Logistic Regression Models,
   Chapman & Hall/CRC Hilbe, Joseph M (2014), Modeling Count Data,
   Cambridge University Press

   .. rubric:: Examples
      :name: examples

   ::

      library(MASS)
      data(fasttrakg)
      glmfp <- glm(die ~ anterior + factor(killip) + offset(log(cases)), family=poisson, data=fasttrakg)
      summary(glmfp)
      exp(coef(glmfp))

