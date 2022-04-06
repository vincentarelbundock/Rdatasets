.. container::

   ========== ===============
   titanicgrp R Documentation
   ========== ===============

   .. rubric:: titanicgrp
      :name: titanicgrp

   .. rubric:: Description
      :name: description

   The data is an grouped version of the 1912 Titanic passenger survival
   log,

   .. rubric:: Usage
      :name: usage

   ::

      data(titanicgrp)

   .. rubric:: Format
      :name: format

   A data frame with 12 observations on the following 5 variables.

   ``survive``
      number of passengers who survived

   ``cases``
      number of passengers with same pattern of covariates

   ``age``
      1=adult; 0=child

   ``sex``
      1=Male; 0=female

   ``class``
      ticket class 1= 1st class; 2= second class; 3= third class

   .. rubric:: Details
      :name: details

   titanicgrp is saved as a data frame. Used to assess risk ratios

   .. rubric:: Source
      :name: source

   Found in many other texts

   .. rubric:: References
      :name: references

   Hilbe, Joseph M (2014), Modeling Count Data, Cambridge University
   Press Hilbe, Joseph M (2007, 2011), Negative Binomial Regression,
   Cambridge University Press Hilbe, Joseph M (2009), Logistic
   Regression Models, Chapman & Hall/CRC

   .. rubric:: Examples
      :name: examples

   ::

      library(MASS)
      library(msme)
      data(titanicgrp)
      glmlr <- glm(survive ~ age + sex + factor(class) + offset(log(cases)),
                   family=poisson, data=titanicgrp)
      summary(glmlr)
      exp(coef(glmlr))

      lcases <- titanicgrp$cases
      nb2o <- nbinomial(survive ~ age + sex + factor(class), 
                                              formula2 =~ age + sex,
                                              offset = lcases,
                                              mean.link="log",
                                              scale.link="log_s",
                                              data=titanicgrp)
      summary(nb2o)
      exp(coef(nb2o))

