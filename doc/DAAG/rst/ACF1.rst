==== ===============
ACF1 R Documentation
==== ===============

Aberrant Crypt Foci in Rat Colons
---------------------------------

Description
~~~~~~~~~~~

Numbers of aberrant crypt foci (ACF) in the section 1 of the colons of
22 rats subjected to a single dose of the carcinogen azoxymethane (AOM),
sacrificed at 3 different times.

Usage
~~~~~

::

   ACF1

Format
~~~~~~

This data frame contains the following columns:

count
   The number of ACF observed in section 1 of each rat colon

endtime
   Time of sacrifice, in weeks following injection of AOM

Source
~~~~~~

Ranjana P. Bird, Faculty of Human Ecology, University of Manitoba,
Winnipeg, Canada.

References
~~~~~~~~~~

E.A. McLellan, A. Medline and R.P. Bird. Dose response and proliferative
characteristics of aberrant crypt foci: putative preneoplastic lesions
in rat colon. Carcinogenesis, 12(11): 2093-2098, 1991.

Examples
~~~~~~~~

::

   sapply(split(ACF1$count,ACF1$endtime),var)
   plot(count ~ endtime, data=ACF1, pch=16)
   pause()
   print("Poisson Regression - Example 8.3")
   ACF.glm0 <- glm(formula = count ~ endtime, family = poisson, data = ACF1)
   summary(ACF.glm0)

   # Is there a quadratic effect?
   pause()

   ACF.glm <- glm(formula = count ~ endtime + I(endtime^2),
     family = poisson, data = ACF1)
   summary(ACF.glm)

   # But is the data really Poisson?  If not, try quasipoisson:
   pause()

   ACF.glm <- glm(formula = count ~ endtime + I(endtime^2),
     family = quasipoisson, data = ACF1)
   summary(ACF.glm)
