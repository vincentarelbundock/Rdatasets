============= ===============
Contraception R Documentation
============= ===============

Contraceptive use in Bangladesh
-------------------------------

Description
~~~~~~~~~~~

These data on the use of contraception by women in urban and rural areas
come from the 1988 Bangladesh Fertility Survey.

Usage
~~~~~

.. code:: R

   data(Contraception)

Format
~~~~~~

A data frame with 1934 observations on the following 6 variables.

woman
   Identifying code for each woman - a factor

district
   Identifying code for each district - a factor

use
   Contraceptive use at time of survey

livch
   Number of living children at time of survey - an ordered factor.
   Levels are ``0``, ``1``, ``2``, ``3+``

age
   Age of woman at time of survey (in years), centred around mean.

urban
   Type of region of residence - a factor. Levels are ``urban`` and
   ``rural``

Source
~~~~~~

https://www.bristol.ac.uk/cmm/learning/mmsoftware/data-rev.html

References
~~~~~~~~~~

Huq, N. M., and Cleland, J. (1990). *Bangladesh Fertility Survey 1989
(Main Report)* Dhaka: National Institute of Population Research and
Training.

Examples
~~~~~~~~

.. code:: R

   str(Contraception)
   summary(Contraception)
   (fm1 <- glmer(use ~ urban+age+livch+(1|district), Contraception, binomial))
   (fm2 <- glmer(use ~ urban+age+livch+(urban|district), Contraception, binomial))
