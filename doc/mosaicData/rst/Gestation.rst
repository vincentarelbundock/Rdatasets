========= ===============
Gestation R Documentation
========= ===============

Data from the Child Health and Development Studies
--------------------------------------------------

Description
~~~~~~~~~~~

Birth weight, date, and gestational period collected as part of the
Child Health and Development Studies in 1961 and 1962. Information about
the baby's parents — age, education, height, weight, and whether the
mother smoked is also recorded.

Usage
~~~~~

::

   data(Gestation)

Format
~~~~~~

A data frame with 1236 observations on the following variables.

-  ``id`` identification number

-  ``plurality`` 5 = single fetus

-  ``outcome`` 1 = live birth that survived at least 28 days

-  ``date`` birth date where 1096=January 1, 1961

-  ``gestation`` length of gestation (in days)

-  ``wt`` birth weight (in ounces)

-  ``parity`` total number of previous pregnancies (including fetal
   deaths and still births)

-  ``race`` mother's race: 0-5=white 6=mex 7=black 8=asian 9=mixed

-  ``age`` mother's age in years at termination of pregnancy

-  ``ed`` mother's education: 0= less than 8th grade, 1 = 8th -12th
   grade - did not graduate, 2= HS graduate–no other schooling, 3=
   HS+trade, 4=HS+some college, 5=College graduate, 6=Trade school, 7=HS
   unclear

-  ``ht`` mother's height in inches to the last completed inch

-  ``wt.1`` mother's prepregnancy weight (in pounds)

-  ``drace`` father's race (a factor with levels equivalent to mother's
   race)

-  ``dage`` father's age (in years)

-  ``ded`` father's education (same coding as mother's education)

-  ``dht`` father's height in inches to the last completed inch

-  ``dwt`` father's weight (in pounds)

-  ``marital`` marital status: 1=married, 2=legally separated,
   3=divorced, 4=widowed, 5=never married

-  ``inc`` family yearly income in $2500 increments: 0=under 2500,
   1=2500-4999, ..., 8=12,500-14,999, 9=15000+

-  ``smoke`` does mother smoke? 0=never, 1=smokes now, 2=until current
   pregnancy, 3=once did, not now

-  ``time`` time since quitting smoking: 0=never smoked, 1=still smokes,
   2=during current preg, 3=within 1 year, 4=1 to 2 years ago, 5= 2 to 3
   years ago, 6= 3 to 4 years ago, 7=5 to 9 years ago, 8=10+ years ago,
   9=quit and don't know

-  ``number`` number of cigarettes smoked per day for past and current
   smokers 0=never, 1=1-4, 2=5-9, 3=10-14, 4=15-19, 5=20-29, 6=30-39,
   7=40-60, 8=60+, 9=smoke but don't know

Details
~~~~~~~

The data were presented by Nolan and Speed to address the question of
whether there is a link between maternal smoking and the baby's health
for male births.

Source
~~~~~~

The book by Nolan and Speed describes the data in more detail and
provides an Internet site for accessing them:
http://www.stat.berkeley.edu/users/statlabs

References
~~~~~~~~~~

D Nolan and T Speed. *Stat Labs: Mathematical Statistics Through
Applications* (2000), Springer-Verlag.

Examples
~~~~~~~~

::

   data(Gestation)
