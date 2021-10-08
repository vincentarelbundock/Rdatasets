.. container::

   ====== ===============
   Credit R Documentation
   ====== ===============

   .. rubric:: Credit Card Balance Data
      :name: credit-card-balance-data

   .. rubric:: Description
      :name: description

   A simulated data set containing information on ten thousand
   customers. The aim here is to predict which customers will default on
   their credit card debt.

   .. rubric:: Usage
      :name: usage

   ::

      Credit

   .. rubric:: Format
      :name: format

   A data frame with 10000 observations on the following 4 variables.

   ``ID``
      Identification

   ``Income``
      Income in $1,000's

   ``Limit``
      Credit limit

   ``Rating``
      Credit rating

   ``Cards``
      Number of credit cards

   ``Age``
      Age in years

   ``Education``
      Number of years of education

   ``Gender``
      A factor with levels ``Male`` and ``Female``

   ``Student``
      A factor with levels ``No`` and ``Yes`` indicating whether the
      individual was a student

   ``Married``
      A factor with levels ``No`` and ``Yes`` indicating whether the
      individual was married

   ``Ethnicity``
      A factor with levels ``African American``, ``Asian``, and
      ``Caucasian`` indicating the individual's ethnicity

   ``Balance``
      Average credit card balance in $.

   .. rubric:: Source
      :name: source

   Simulated data, with thanks to Albert Kim for pointing out that this
   was omitted, and supplying the data and man documentation page on Oct
   19, 2017

   .. rubric:: References
      :name: references

   James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
   Introduction to Statistical Learning with applications in R*,
   https://www.statlearning.com, Springer-Verlag, New York

   .. rubric:: Examples
      :name: examples

   ::

      summary(Credit)
      lm(Balance ~ Student + Limit, data=Credit)
