========== ===============
laborpanel R Documentation
========== ===============

Hours worked and wages
----------------------

Description
~~~~~~~~~~~

Data on 532 males over 10 years (1979-1988) from Ziliak (1997),
collected from the Panel Study of Income Dynamics.

Usage
~~~~~

.. code:: R

   laborpanel

Format
~~~~~~

A data frame with 5320 observations and 8 variables:

lnhr
   log of annual hours worked

lnwg
   log of of hourly wage

kids
   number of children

ageh
   age

agesq
   quadratic age

disab
   = 1 if bad health

id
   identification code

year
   interview year

Section in Text
~~~~~~~~~~~~~~~

21.3 Linear Panel Example: Hours and Wages, pp. 708-15

Source
~~~~~~

http://cameron.econ.ucdavis.edu/mmabook/mmadata.html

References
~~~~~~~~~~

Cameron, A. and Trivedi, P. (2005), "Microeconometrics: Methods and
Applications," Cambridge University Press, New York.

Ziliak, J. (1997), "Efficient Estimation With Panel Data when
Instruments are Predetermined: An Empirical Comparison of
Moment-Condition Estimators," Journal of Business and Economic
Statistics, 15, 419-431.
https://amstat.tandfonline.com/doi/abs/10.1080/07350015.1997.10524720

Panel Study of Income Dynamics (PSID), https://psidonline.isr.umich.edu

Examples
~~~~~~~~

.. code:: R

   summary(laborpanel)
