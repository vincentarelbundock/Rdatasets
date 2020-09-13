========= ===============
Fertility R Documentation
========= ===============

Fertility and Women's Labor Supply
----------------------------------

Description
~~~~~~~~~~~

Cross-section data from the 1980 US Census on married women aged 21–35
with two or more children.

Usage
~~~~~

::

   data("Fertility")
   data("Fertility2")

Format
~~~~~~

A data frame containing 254,654 (and 30,000, respectively) observations
on 8 variables.

morekids
   factor. Does the mother have more than 2 children?

gender1
   factor indicating gender of first child.

gender2
   factor indicating gender of second child.

age
   age of mother at census.

afam
   factor. Is the mother African-American?

hispanic
   factor. Is the mother Hispanic?

other
   factor. Is the mother's ethnicity neither African-American nor
   Hispanic, nor Caucasian? (see below)

work
   number of weeks in which the mother worked in 1979.

Details
~~~~~~~

``Fertility2`` is a random subset of ``Fertility`` with 30,000
observations.

There are conflicts in the ethnicity coding (see also examples). Hence,
it was not possible to create a single factor and the original three
indicator variables have been retained.

Not all variables from Angrist and Evans (1998) have been included.

Source
~~~~~~

Online complements to Stock and Watson (2007).

References
~~~~~~~~~~

Angrist, J.D., and Evans, W.N. (1998). Children and Their Parents' Labor
Supply: Evidence from Exogenous Variation in Family Size *American
Economic Review*, **88**, 450–477.

Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*, 2nd
ed. Boston: Addison Wesley.

See Also
~~~~~~~~

``StockWatson2007``

Examples
~~~~~~~~

::

   data("Fertility2")

   ## conflicts in ethnicity coding
   ftable(xtabs(~ afam + hispanic + other, data = Fertility2))

   ## create convenience variables
   Fertility2$mkids <- with(Fertility2, as.numeric(morekids) - 1)
   Fertility2$samegender <- with(Fertility2, factor(gender1 == gender2))
   Fertility2$twoboys <- with(Fertility2, factor(gender1 == "male" & gender2 == "male"))
   Fertility2$twogirls <- with(Fertility2, factor(gender1 == "female" & gender2 == "female"))

   ## similar to Angrist and Evans, p. 462
   fm1 <- lm(mkids ~ samegender, data = Fertility2)
   summary(fm1)

   fm2 <- lm(mkids ~ gender1 + gender2 + samegender + age + afam + hispanic + other, data = Fertility2)
   summary(fm2)

   fm3 <- lm(mkids ~ gender1 + twoboys + twogirls + age + afam + hispanic + other, data = Fertility2)
   summary(fm3)
