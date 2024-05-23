.. container::

   .. container::

      ==== ===============
      LOTI R Documentation
      ==== ===============

      .. rubric:: Land-Ocean Temperature Index, 1880-2022
         :name: land-ocean-temperature-index-1880-2022

      .. rubric:: Description
         :name: description

      These data contain monthly mean temperature anomalies expressed as
      deviations from the corresponding 1951-1980 means. They are useful
      for showing how we can measure climate change.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         LOTI

      .. rubric:: Format
         :name: format

      A data frame with 1,716 observations on the following 2 variables.

      ``date``
         a date, mostly to contain information for the year and month

      ``value``
         the mean temperature anomaly as deviation from corresponding
         1951-1980 mean

      .. rubric:: Details
         :name: details

      Data are updated through most recent month, at least for last time
      I updated it. Data represent combined land-surface air and
      sea-surface water temperature anomalies. Of note: the day value in
      the ``date`` column has no real value. It was just a way of
      combining data that are aggregated by year and month.

      .. rubric:: Source
         :name: source

      National Aeronautics and Space Administration's Goddard Institute
      for Space Studies.
