===== ===============
ffood R Documentation
===== ===============

Service (waiting) times (in seconds) of customers at a fast-food restaurant.
----------------------------------------------------------------------------

Description
~~~~~~~~~~~

Service (waiting) times (in seconds) of customers at a fast-food
restaurant.

Usage
~~~~~

.. code:: R

   ffood

Format
~~~~~~

A data frame with 10 rows and 2 columns:

AM
   Waiting times for customers served during 9-10AM

PM
   Waiting times for customers served during 2-3PM

Examples
~~~~~~~~

.. code:: R

    summary(ffood)
    # 95% Confidence interval for the mean waiting time usig t-distribution
    a <- c(ffood$AM, ffood$PM)
    mean(a) + c(-1, 1) * qt(0.975, df=19) * sqrt(var(a))/sqrt(20) 
    # Two sample t-test for the difference between morning and afternoon times
    t.test(ffood$AM, ffood$PM)
