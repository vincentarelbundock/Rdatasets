========= ===============
Portfolio R Documentation
========= ===============

Portfolio Data
--------------

Description
~~~~~~~~~~~

A simple simulated data set containing 100 returns for each of two
assets, X and Y. The data is used to estimate the optimal fraction to
invest in each asset to minimize investment risk of the combined
portfolio. One can then use the Bootstrap to estimate the standard error
of this estimate.

Usage
~~~~~

::

   Portfolio

Format
~~~~~~

A data frame with 100 observations on the following 2 variables.

``X``
   Returns for Asset X

``Y``
   Returns for Asset Y

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

   summary(Portfolio)
   attach(Portfolio)
   plot(X,Y)
