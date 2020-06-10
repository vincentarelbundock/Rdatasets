=========== ===============
medExpenses R Documentation
=========== ===============

Family Medical Expenses
-----------------------

Description
~~~~~~~~~~~

The ``medExpenses`` data frame contains average weekly medical expenses
including drugs for 33 families randomly sampled from a community of 600
families which contained 2700 individuals. These data were collected in
the 1970's at an unknown location.

Usage
~~~~~

::

   medExpenses

Format
~~~~~~

familysize
   number of individuals in a family

expenses
   average weekly cost for medical expenses per family member

Examples
~~~~~~~~

::

   with(medExpenses, weighted.mean(expenses, familysize))
