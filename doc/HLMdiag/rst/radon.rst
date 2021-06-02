===== ===============
radon R Documentation
===== ===============

Radon data
----------

Description
~~~~~~~~~~~

Radon measurements of 919 owner-occupied homes in 85 counties of
Minnesota.

Usage
~~~~~

::

   data(radon)

Format
~~~~~~

A data frame with 919 observations on the following 5 variables:

log.radon
   Radon measurement (in log pCi/L, i.e., log picoCurie per liter)

basement
   Indicator for the level of the home at which the radon measurement
   was taken - 0 = basement, 1 = first floor.

uranium
   Average county-level soil uranium content.

county
   County ID.

county.name
   County name - a factor.

Source
~~~~~~

http://www.stat.columbia.edu/~gelman/arm/software/

References
~~~~~~~~~~

Price, P. N., Nero, A. V. and Gelman, A. (1996) Bayesian prediction of
mean indoor radon concentrations for Minnesota counties. *Health
Physics*. **71**\ (6), 922–936.

Gelman, A. and Hill, J. (2007) *Data analysis using regression and
multilevel/hierarchical models*. Cambridge University Press.
