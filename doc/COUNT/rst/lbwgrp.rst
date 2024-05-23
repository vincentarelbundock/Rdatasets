.. container::

   .. container::

      ====== ===============
      lbwgrp R Documentation
      ====== ===============

      .. rubric:: lbwgrp
         :name: lbwgrp

      .. rubric:: Description
         :name: description

      grouped format of the lbw data. The observation level data come to
      us form Hosmer and Lemeshow (2000). Grouping is such that lowbw is
      the numerator, and cases the denominator of a binomial model, or
      cases may be an offset to the count variable, lowbw. Birthweights
      under 2500g classifies a low birthweight baby.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(lbwgrp)

      .. rubric:: Format
         :name: format

      A data frame with 6 observations on the following 7 variables.

      ``lowbw``
         Number of low weight babies per covariate pattern: 12-60

      ``cases``
         Number of observations with same covariate pattern: 30-165

      ``smoke``
         1=history of mother smoking; 0=mother nonsmoker

      ``race1``
         (1/0): Caucasian

      ``race2``
         (1/0): Black

      ``race3``
         (1/0): Other

      ``low``
         low birth weight (not valid variable in grouped format)

      .. rubric:: Details
         :name: details

      lbwgrp is saved as a data frame. Count models: count
      response=lowbt; offset=log(cases); Binary: binomial numerator=
      lowbt; binomial denominator=cases

      .. rubric:: Source
         :name: source

      Hosmer, D and S. Lemeshow (2000), Applied Logistic Regression,
      Wiley

      .. rubric:: References
         :name: references

      Hilbe, Joseph M (2007, 2011), Negative Binomial Regression,
      Cambridge University Press Hilbe, Joseph M (2009), Logistic
      Regression Models, Chapman & Hall/CRC

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(lbwgrp)
         glmgp <- glm(lowbw ~ smoke + race2 + race3 + offset(log(cases)), family=poisson, data=lbwgrp)
         summary(glmgp)
         exp(coef(glmgp))
         library(MASS)
         glmgnb <- glm.nb(lowbw ~  smoke + race2 + race3, data=lbwgrp)
         summary(glmgnb)
         exp(coef(glmgnb))
