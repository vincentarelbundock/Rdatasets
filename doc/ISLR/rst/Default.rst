======= ===============
Default R Documentation
======= ===============

Credit Card Default Data
------------------------

Description
~~~~~~~~~~~

A simulated data set containing information on ten thousand customers.
The aim here is to predict which customers will default on their credit
card debt.

Usage
~~~~~

::

   Default

Format
~~~~~~

A data frame with 10000 observations on the following 4 variables.

``default``
   A factor with levels ``No`` and ``Yes`` indicating whether the
   customer defaulted on their debt

``student``
   A factor with levels ``No`` and ``Yes`` indicating whether the
   customer is a student

``balance``
   The average balance that the customer has remaining on their credit
   card after making their monthly payment

``income``
   Income of customer

Source
~~~~~~

Simulated data

References
~~~~~~~~~~

James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
Introduction to Statistical Learning with applications in R*,
`www.StatLearning.com <www.StatLearning.com>`__, Springer-Verlag, New
York

Examples
~~~~~~~~

::

   summary(Default)
   glm(default~student+balance+income,family="binomial",data=Default)
