.. container::

   .. container::

      ======== ===============
      deguelin R Documentation
      ======== ===============

      .. rubric:: Deguelin applied to chrysanthemum aphis
         :name: deguelin-applied-to-chrysanthemum-aphis

      .. rubric:: Description
         :name: description

      Quantal assay data from an experiment where the insectide deguelin
      was applied to *Macrosiphoniella sanborni*.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(deguelin)

      .. rubric:: Format
         :name: format

      A data frame with 6 observations on the following 4 variables.

      ``dose``
         a numeric vector of doses applied

      ``log10dose``
         a numeric vector of logarithm-transformed doses

      ``r``
         a numeric vector contained number of dead insects

      ``n``
         a numeric vector contained the total number of insects

      .. rubric:: Details
         :name: details

      The log-logistic model provides an inadequate fit.

      The dataset is used in Nottingham and Birch (2000) to illustrate a
      semiparametric approach to dose-response modelling.

      .. rubric:: Source
         :name: source

      Morgan, B. J. T. (1992) *Analysis of Quantal Response Data*,
      London: Chapman \\& Hall/CRC (Table 3.9, p. 117).

      .. rubric:: References
         :name: references

      Notttingham, Q. J. and Birch, J. B. (2000) A semiparametric
      approach to analysing dose-response data, *Statist. Med.*, **19**,
      389–404.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Log-logistic fit
         deguelin.m1 <- drm(r/n~dose, weights=n, data=deguelin, fct=LL.2(), type="binomial")
         modelFit(deguelin.m1)
         summary(deguelin.m1)

         ## Loess fit
         deguelin.m2 <- loess(r/n~dose, data=deguelin, degree=1)

         ## Plot of data with fits superimposed
         plot(deguelin.m1, ylim=c(0.2,1))
         lines(1:60, predict(deguelin.m2, newdata=data.frame(dose=1:60)), col = 2, lty = 2)

         lines(1:60, 0.95*predict(deguelin.m2, 
         newdata=data.frame(dose=1:60))+0.05*predict(deguelin.m1, newdata=data.frame(dose=1:60), se = FALSE),
         col = 3, lty=3)
