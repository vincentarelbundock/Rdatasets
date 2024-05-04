.. container::

   .. container::

      ======= ===============
      Default R Documentation
      ======= ===============

      .. rubric:: Credit Card Default Data
         :name: credit-card-default-data

      .. rubric:: Description
         :name: description

      A simulated data set containing information on ten thousand
      customers. The aim here is to predict which customers will default
      on their credit card debt.

      .. rubric:: Usage
         :name: usage

      ::

         Default

      .. rubric:: Format
         :name: format

      A data frame with 10000 observations on the following 4 variables.

      ``default``
         A factor with levels ``No`` and ``Yes`` indicating whether the
         customer defaulted on their debt

      ``student``
         A factor with levels ``No`` and ``Yes`` indicating whether the
         customer is a student

      ``balance``
         The average balance that the customer has remaining on their
         credit card after making their monthly payment

      ``income``
         Income of customer

      .. rubric:: Source
         :name: source

      Simulated data

      .. rubric:: References
         :name: references

      James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
      Introduction to Statistical Learning with applications in R*,
      https://www.statlearning.com, Springer-Verlag, New York

      .. rubric:: Examples
         :name: examples

      ::

         summary(Default)
         glm(default~student+balance+income,family="binomial",data=Default)
