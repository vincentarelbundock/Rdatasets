.. container::

   ======= ===============
   nihills R Documentation
   ======= ===============

   .. rubric:: Record times for Northern Ireland mountain running events
      :name: nihills

   .. rubric:: Description
      :name: description

   Data were from the 2007 calendar for the Northern Ireland Mountain
   Running Association.

   .. rubric:: Usage
      :name: usage

   ::

      data(nihills)
      data(lognihills)

   .. rubric:: Format
      :name: format

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

   .. rubric:: Details
      :name: details

   These data make an interesting comparison with the dataset
   ``hills2000`` in the DAAG package.

   .. rubric:: Source
      :name: source

   For more recent information, see
   https://www.nimra.org.uk/index.php/fixtures/

   .. rubric:: Examples
      :name: examples

   ::

      data(nihills)
      lm(formula = log(time) ~ log(dist) + log(climb), data = nihills)
      lm(formula = log(time) ~ log(dist) + log(climb/dist), data = nihills)
      lm(formula = logtime ~ logdist + I(logclimb-logdist), data = lognihills)
