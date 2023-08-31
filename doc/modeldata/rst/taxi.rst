.. container::

   ==== ===============
   taxi R Documentation
   ==== ===============

   .. rubric:: Chicago taxi data set
      :name: taxi

   .. rubric:: Description
      :name: description

   A data set containing information on a subset of taxi trips in the
   city of Chicago in 2022.

   .. rubric:: Details
      :name: details

   The source data are originally described on the linked City of
   Chicago data portal. The data exported here are a pre-processed
   subset motivated by the modeling problem of predicting whether a
   rider will tip or not.

   tip
      Whether the rider left a tip. A factor with levels "yes" and "no".

   distance
      The trip distance, in odometer miles.

   company
      The taxi company, as a factor. Companies that occurred few times
      were binned as "other".

   local
      Whether the trip started in the same community area as it began.
      See the source data for community area values.

   dow
      The day of the week in which the trip began, as a factor.

   month
      The month in which the trip began, as a factor.

   hour
      The hour of the day in which the trip began, as a numeric.

   .. rubric:: Value
      :name: value

   tibble

   .. rubric:: Source
      :name: source

   https://data.cityofchicago.org/Transportation/Taxi-Trips/wrvz-psew

   .. rubric:: Examples
      :name: examples

   .. code:: R

      taxi
