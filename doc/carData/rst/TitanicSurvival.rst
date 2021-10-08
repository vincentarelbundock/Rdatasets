.. container::

   =============== ===============
   TitanicSurvival R Documentation
   =============== ===============

   .. rubric:: Survival of Passengers on the Titanic
      :name: survival-of-passengers-on-the-titanic

   .. rubric:: Description
      :name: description

   Information on the survival status, sex, age, and passenger class of
   1309 passengers in the Titanic disaster of 1912.

   .. rubric:: Usage
      :name: usage

   ::

      TitanicSurvival

   .. rubric:: Format
      :name: format

   A data frame with 1309 observations on the following 4 variables.

   ``survived``
      ``no`` or ``yes``.

   ``sex``
      ``female`` or ``male``

   ``age``
      in years (and for some children, fractions of a year); age is
      missing for 263 of the passengers.

   ``passengerClass``
      ``1st``, ``2nd``, or ``3rd`` class.

   .. rubric:: Details
      :name: details

   This is part of a larger data set compiled by Thomas Cason. Many
   additional details are given in the sources cited below.

   .. rubric:: Source
      :name: source

   Data set ``titanic3`` from
   http://biostat.mc.vanderbilt.edu/twiki/bin/view/Main/DataSets.

   .. rubric:: References
      :name: references

   http://www.encyclopedia-titanica.org/

   F. E. Harrell, Jr. (2001) *Regression Modeling Strategies* New York:
   Springer.

   .. rubric:: Examples
      :name: examples

   ::

      summary(TitanicSurvival)
