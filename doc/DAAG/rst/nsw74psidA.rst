========== ===============
nsw74psidA R Documentation
========== ===============

A Subset of the nsw74psid1 Data Set
-----------------------------------

Description
~~~~~~~~~~~

The ``nsw74psidA`` data frame has 252 rows and 10 columns. See
``nsw74psid1`` for more information.

Usage
~~~~~

::

   nsw74psidA

Format
~~~~~~

This data frame contains the following columns:

trt
   a numeric vector

age
   a numeric vector

educ
   a numeric vector

black
   a numeric vector

hisp
   a numeric vector

marr
   a numeric vector

nodeg
   a numeric vector

re74
   a numeric vector

re75
   a numeric vector

re78
   a numeric vector

Details
~~~~~~~

This data set was obtained using:

``here <- age <= 40 & re74<=5000 & re75 <= 5000 & re78 < 30000``

``nsw74psidA <- nsw74psid1[here, ]``

Examples
~~~~~~~~

::

   table(nsw74psidA$trt)
   A1.lm <- lm(re78 ~ trt + (age + educ + re74 + re75) + (black +
         hisp + marr + nodeg), data = nsw74psidA)
   summary(A1.lm)$coef
   discA.glm <- glm(formula = trt ~ age + educ + black + hisp +
     marr + nodeg + re74 + re75, family = binomial, data = nsw74psidA)
   A.scores <- predict(discA.glm)
   options(digits=4)
   overlap <- A.scores > -3.5 & A.scores < 3.8
   A.lm <- lm(re78 ~ trt + A.scores, data=nsw74psidA, subset = overlap)
   summary(A.lm)$coef
