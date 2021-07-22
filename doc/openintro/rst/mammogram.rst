========= ===============
mammogram R Documentation
========= ===============

Experiment with Mammogram Randomized
------------------------------------

Description
~~~~~~~~~~~

An experiment where 89,835 women were randomized to either get a
mammogram or a non-mammogram breast screening. The response measured was
whether they had died from breast cancer within 25 years.

Usage
~~~~~

::

   mammogram

Format
~~~~~~

A data frame with 89835 observations on the following 2 variables.

treatment
   a factor with levels ``control`` ``mammogram``

breast_cancer_death
   a factor with levels ``no`` ``yes``

Source
~~~~~~

Miller AB. 2014. Twenty five year follow-up for breast cancer incidence
and mortality of the Canadian National Breast Screening Study:
randomised screening trial. BMJ 2014;348:g366.

Examples
~~~~~~~~

::



   table(mammogram)
   chisq.test(table(mammogram))
