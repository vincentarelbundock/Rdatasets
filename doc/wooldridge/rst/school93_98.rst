=========== ===============
school93_98 R Documentation
=========== ===============

school93_98
-----------

Description
~~~~~~~~~~~

Wooldridge Source: L.E. Papke (2005), “The Effects of Spending on Test
Pass Rates: Evidence from Michigan,” Journal of Public Economics 89,
821-839. Data loads lazily.

Usage
~~~~~

.. code:: R

   data('school93_98')

Format
~~~~~~

A data.frame with 10668 observations on 18 variables:

- **distid:**

- **schid:**

- **lunch:** percent eligible for free lunch

- **enrol:** number of students

- **exppp:** exp per pupil

- **math4:**

- **year:** 1993 = school year 1992-1993

- **y93:**

- **y94:**

- **y95:**

- **y96:**

- **y97:**

- **y98:**

- **rexpp:** (exppp/cpi)1.605: 1997 $

- **found:**

- **lenrol:** log(enrol)

- **lrexpp:** log(rexpp)

- **lavgrexpp:** log((rexpp + L.rexpp)/2)

Notes
~~~~~

This is closer to the data actually used in the Papke paper as it is at
the school (building) level. It is unbalanced because data on scores and
some of the spending and other variables is missing for some schools.
While the usual RE and FE methods can be applied directly, obtaining the
correlated random effects version of the Hausman test is more advance.
Computer Exercise 17 in Chapter 14 walks the reader through it.

Used in Text: page 491

Source
~~~~~~

http://www.cengage.com/c/introductory-econometrics-a-modern-approach-7e-wooldridge

Examples
~~~~~~~~

.. code:: R

    str(school93_98)
