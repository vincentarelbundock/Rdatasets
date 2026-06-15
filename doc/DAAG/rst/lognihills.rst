======= ===============
nihills R Documentation
======= ===============

Record times for Northern Ireland mountain running events
---------------------------------------------------------

Description
~~~~~~~~~~~

Data were from the 2007 calendar for the Northern Ireland Mountain
Running Association.

Usage
~~~~~

.. code:: R

   data(nihills)
   data(lognihills)

Format
~~~~~~

A data frame with 23 observations on the following 4 variables.

``dist``
   distances in miles

``climb``
   amount of climb in feet

``time``
   record time in hours for males

``timef``
   record time in hours for females

``logdist``
   distances, log(miles)

``logclimb``
   climb, log(feet)

``logtime``
   record time for males, log(hours)

``logtimef``
   record time for females, log(hours)

Details
~~~~~~~

These data make an interesting comparison with the dataset ``hills2000``
in the DAAG package.

Source
~~~~~~

For more recent information, see
https://www.nimra.org.uk/index.php/fixtures/

Examples
~~~~~~~~

.. code:: R

   data(nihills)
   lm(formula = log(time) ~ log(dist) + log(climb), data = nihills)
   lm(formula = log(time) ~ log(dist) + log(climb/dist), data = nihills)
   lm(formula = logtime ~ logdist + I(logclimb-logdist), data = lognihills)
