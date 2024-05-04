.. container::

   .. container::

      ======= ===============
      toycars R Documentation
      ======= ===============

      .. rubric:: Toy Cars Data
         :name: toy-cars-data

      .. rubric:: Description
         :name: description

      The ``toycars`` data frame has 27 rows and 3 columns. Observations
      are on the distance traveled by one of three different toy cars on
      a smooth surface, starting from rest at the top of a 16 inch long
      ramp tilted at varying angles.

      .. rubric:: Usage
         :name: usage

      ::

         toycars

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      angle
         tilt of ramp, in degrees

      distance
         distance traveled, in meters

      car
         a numeric code (1 = first car, 2 = second car, 3 = third car)

      .. rubric:: Examples
         :name: examples

      ::

         toycars.lm <- lm(distance ~ angle + factor(car), data=toycars)
         summary(toycars.lm)
