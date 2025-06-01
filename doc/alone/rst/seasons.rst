.. container::

   .. container::

      ======= ===============
      seasons R Documentation
      ======= ===============

      .. rubric:: Seasons
         :name: seasons

      .. rubric:: Description
         :name: description

      Season summary includes location and other season level
      information

      .. rubric:: Usage
         :name: usage

      .. code:: R

         seasons

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      ``version``
         Country code for the version of the show

      ``season``
         The season number

      ``subtitle``
         Season subtitle

      ``location``
         Location

      ``country``
         Country

      ``region``
         Region

      ``n_survivors``
         Number of survivors. Season 4 there were 7 teams of 2.

      ``lat``
         Latitude

      ``lon``
         Longitude

      ``date_drop_off``
         Date the survivors where dropped off

      .. rubric:: Source
         :name: source

      https://en.wikipedia.org/wiki/Alone_(TV_series)

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)

         seasons |>
         count(country)
