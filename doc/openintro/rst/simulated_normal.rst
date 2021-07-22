================ ===============
simulated_normal R Documentation
================ ===============

Simulated data sets, drawn from a normal distribution.
------------------------------------------------------

Description
~~~~~~~~~~~

Data were simulated using ``rnorm``.

Usage
~~~~~

::

   simulated_normal

Format
~~~~~~

The format is: List of 3 $ n40 : 40 observations from a standard normal
distribution. $ n100: 100 observations from a standard normal
distribution. $ n400: 400 observations from a standard normal
distribution.

Examples
~~~~~~~~

::


   data(simulated_normal)
   lapply(simulated_normal, qqnorm)
