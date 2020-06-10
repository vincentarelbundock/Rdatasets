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

::

   data(nihills)

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

Details
~~~~~~~

These data make an interesting comparison with the dataset ``hills2000``
in the DAAG package.

Source
~~~~~~

For more recent information, see
http://www.nimra.org.uk/index.php/fixtures/

Examples
~~~~~~~~

::

   data(nihills)
   lm(formula = log(time) ~ log(dist) + log(climb), data = nihills)
   lm(formula = log(time) ~ log(dist) + log(climb/dist), data = nihills)
