====== ===============
cars93 R Documentation
====== ===============

cars93
------

Description
~~~~~~~~~~~

A data frame with 54 rows and 6 columns. This data is a subset of the
``Cars93`` data set from the ``MASS`` package.

Usage
~~~~~

::

   cars93

Format
~~~~~~

A data frame with 54 observations on the following 6 variables.

type
   The vehicle type with levels ``large``, ``midsize``, and ``small``.

price
   Vehicle price (USD).

mpg_city
   Vehicle mileage in city (miles per gallon).

drive_train
   Vehicle drive train with levels ``4WD``, ``front``, and ``rear``.

passengers
   The vehicle passenger capacity.

weight
   Vehicle weight (lbs).

Details
~~~~~~~

These cars represent a random sample for 1993 models that were in both
*Consumer Reports* and *PACE Buying Guide*. Only vehicles of type
``small``, ``midsize``, and ``large`` were include.

Further description can be found in Lock (1993). Use the URL
http://jse.amstat.org/v1n1/datasets.lock.html.

Source
~~~~~~

Lock, R. H. (1993) 1993 New Car Data. *Journal of Statistics Education*
1(1).

Examples
~~~~~~~~

::


   library(ggplot2)

   # Vehicle price by type
   ggplot(cars93, aes(x = price)) +
     geom_histogram(binwidth = 5) +
     facet_wrap(~type)

   # Vehicle price vs. weight
   ggplot(cars93, aes(x = weight, y = price)) +
     geom_point()

   # Milleage vs. weight
   ggplot(cars93, aes(x = weight, y = mpg_city)) +
     geom_point() +
     geom_smooth()
