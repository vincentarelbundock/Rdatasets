.. container::

   .. container::

      === ===============
      rwm R Documentation
      === ===============

      .. rubric:: rwm
         :name: rwm

      .. rubric:: Description
         :name: description

      German health registry for the years 1984-1988. Health information
      for years prior to health reform.

      .. rubric:: Usage
         :name: usage

      ::

         data(rwm)

      .. rubric:: Format
         :name: format

      A data frame with 27,326 observations on the following 4
      variables.

      ``docvis``
         number of visits to doctor during year (0-121)

      ``age``
         age: 25-64

      ``educ``
         years of formal education (7-18)

      ``hhninc``
         household yearly income in DM/1000)

      .. rubric:: Details
         :name: details

      rwm is saved as a data frame. Count models typically use docvis as
      response variable. 0 counts are included

      .. rubric:: Source
         :name: source

      German Health Reform Registry, years pre-reform 1984-1988, From
      Hilbe and Greene (2008)

      .. rubric:: References
         :name: references

      Hilbe, Joseph M (2011), Negative Binomial Regression, Cambridge
      University Press Hilbe, J.M. and W.H. Greene (2008), "Count
      Response Regression Models", in Rao, CR, JP Miller and DC Rao
      (eds), Handbook of Statistics 27: Epidemiology and Medical
      Statistics, Amsterdam: Elsevier. pp. 210-252.

      .. rubric:: Examples
         :name: examples

      ::

         data(rwm)
         glmrwp <- glm(docvis ~ age + educ + hhninc, family=poisson, data=rwm)
         summary(glmrwp)
         exp(coef(glmrwp))
         library(MASS)
         glmrwnb <- glm.nb(docvis ~ age + educ + hhninc, data=rwm)
         summary(glmrwnb)
         exp(coef(glmrwnb))
