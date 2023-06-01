.. container::

   ========= ===============
   Gestation R Documentation
   ========= ===============

   .. rubric:: Data from the Child Health and Development Studies
      :name: Gestation

   .. rubric:: Description
      :name: description

   Birth weight, date, and gestational period collected as part of the
   Child Health and Development Studies in 1961 and 1962. Information
   about the baby's parents — age, education, height, weight, and
   whether the mother smoked is also recorded.

   .. rubric:: Usage
      :name: usage

   ::

      data(Gestation)

   .. rubric:: Format
      :name: format

   A data frame with 1236 observations on the following variables.

   -  ``id`` identification number

   -  ``plurality`` all "single fetus" in this data set

   -  ``outcome`` all "live birth" (survived at least 28 days) in this
      data set

   -  ``date`` birth date where 1096=January 1, 1961

   -  ``gestation`` length of gestation (in days)

   -  ``wt`` birth weight (in ounces)

   -  ``parity`` total number of previous pregnancies (including fetal
      deaths and still births)

   -  ``race`` mother's race: "asian", "black", "mex", "mixed", or
      "white"

   -  ``age`` mother's age in years at termination of pregnancy

   -  ``ed`` mother's education

   -  ``ht`` mother's height in inches to the last completed inch

   -  ``wt.1`` mother's prepregnancy weight (in pounds)

   -  ``drace`` father's race

   -  ``dage`` father's age (in years)

   -  ``ded`` father's education

   -  ``dht`` father's height in inches to the last completed inch

   -  ``dwt`` father's weight (in pounds)

   -  ``marital`` marital status,

   -  ``inc`` family yearly income in $2500 increments

   -  ``smoke`` does mother smoke? (never, smokes now, until current
      pregnancy, once did, not now)

   -  ``time`` time since quitting smoking (never smoked, still smokes,
      during current preg, within 1 year, 1 to 2 years ago, 2 to 3 years
      ago, 3 to 4 years ago, 5 to 9 years ago, 10+ years ago, quit and
      don't know

   -  ``number`` number of cigarettes smoked per day for past and
      current smokers (never, 1-4, 5-9, 10-14, 15-19, 20-29, 30-39,
      40-60, 60+, smoke but don't know)

   .. rubric:: Details
      :name: details

   The data were presented by Nolan and Speed to address the question of
   whether there is a link between maternal smoking and the baby's
   health for male births.

   .. rubric:: Source
      :name: source

   The book by Nolan and Speed describes the data in more detail and
   provides an Internet site for accessing them:
   https://www.stat.berkeley.edu/users/statlabs/

   .. rubric:: References
      :name: references

   D Nolan and T Speed. *Stat Labs: Mathematical Statistics Through
   Applications* (2000), Springer-Verlag.

   .. rubric:: Examples
      :name: examples

   ::

      data(Gestation)
