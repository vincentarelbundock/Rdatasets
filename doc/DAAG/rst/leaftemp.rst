======== ===============
leaftemp R Documentation
======== ===============

Leaf and Air Temperature Data
-----------------------------

Description
~~~~~~~~~~~

These data consist of measurements of vapour pressure and of the
difference between leaf and air temperature.

Usage
~~~~~

::

   leaftemp

Format
~~~~~~

This data frame contains the following columns:

CO2level
   Carbon Dioxide level ``low``, ``medium``, ``high``

vapPress
   Vapour pressure

tempDiff
   Difference between leaf and air temperature

BtempDiff
   a numeric vector

Source
~~~~~~

Katharina Siebke and Susan von Cammerer, Australian National University.

Examples
~~~~~~~~

::

   print("Fitting Multiple Lines - Example 7.3")

   leaf.lm1 <- lm(tempDiff ~ 1 , data = leaftemp)
   leaf.lm2 <- lm(tempDiff ~ vapPress, data = leaftemp)
   leaf.lm3 <- lm(tempDiff ~ CO2level + vapPress, data = leaftemp)
   leaf.lm4 <- lm(tempDiff ~ CO2level + vapPress + vapPress:CO2level,
     data = leaftemp)

   anova(leaf.lm1, leaf.lm2, leaf.lm3, leaf.lm4)

   summary(leaf.lm2)
   plot(leaf.lm2)

