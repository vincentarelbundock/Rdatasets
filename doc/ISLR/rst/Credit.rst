====== ===============
Credit R Documentation
====== ===============

Credit Card Balance Data
------------------------

Description
~~~~~~~~~~~

A simulated data set containing information on ten thousand customers.
The aim here is to predict which customers will default on their credit
card debt.

Usage
~~~~~

::

   Credit

Format
~~~~~~

A data frame with 10000 observations on the following 4 variables.

``ID``
   Identification

``Income``
   Income in $10,000's

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

Source
~~~~~~

Simulated data, with thanks to Albert Kim for pointing out that this was
omitted, and supplying the data and man documentation page on Oct 19,
2017

References
~~~~~~~~~~

James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
Introduction to Statistical Learning with applications in R*,
`www.StatLearning.com <www.StatLearning.com>`__, Springer-Verlag, New
York

Examples
~~~~~~~~

::

   summary(Credit)
   lm(Balance ~ Student + Limit, data=Credit)
