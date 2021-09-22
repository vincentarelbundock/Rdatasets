====== ===============
Weekly R Documentation
====== ===============

Weekly S&P Stock Market Data
----------------------------

Description
~~~~~~~~~~~

Weekly percentage returns for the S&P 500 stock index between 1990 and
2010.

Usage
~~~~~

::

   Weekly

Format
~~~~~~

A data frame with 1089 observations on the following 9 variables.

``Year``
   The year that the observation was recorded

``Lag1``
   Percentage return for previous week

``Lag2``
   Percentage return for 2 weeks previous

``Lag3``
   Percentage return for 3 weeks previous

``Lag4``
   Percentage return for 4 weeks previous

``Lag5``
   Percentage return for 5 weeks previous

``Volume``
   Volume of shares traded (average number of daily shares traded in
   billions)

``Today``
   Percentage return for this week

``Direction``
   A factor with levels ``Down`` and ``Up`` indicating whether the
   market had a positive or negative return on a given week

Source
~~~~~~

Raw values of the S&P 500 were obtained from Yahoo Finance and then
converted to percentages and lagged.

References
~~~~~~~~~~

James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
Introduction to Statistical Learning with applications in R*,
https://www.statlearning.com, Springer-Verlag, New York

Examples
~~~~~~~~

::

   summary(Weekly)
   lm(Today~Lag1+Lag2,data=Weekly)
