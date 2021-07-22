================= ===============
male_heights_fcid R Documentation
================= ===============

Random sample of adult male heights
-----------------------------------

Description
~~~~~~~~~~~

This sample is based on data from the USDA Food Commodity Intake
Database.

Usage
~~~~~

::

   male_heights_fcid

Format
~~~~~~

A data frame with 100 observations on the following variable.

height_inch
   Height, in inches.

Source
~~~~~~

Simulated based on data from USDA.

Examples
~~~~~~~~

::


   data(male_heights_fcid)
   histPlot(male_heights_fcid$height_inch)
