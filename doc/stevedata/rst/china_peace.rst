.. container::

   .. container::

      =========== ===============
      china_peace R Documentation
      =========== ===============

      .. rubric:: Drivers of China's Peace Engagement in
         Conflict-affected Countries
         :name: drivers-of-chinas-peace-engagement-in-conflict-affected-countries

      .. rubric:: Description
         :name: description

      A data set on the correlates of Chinese peace engagement in
      conflict-affected countries.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         china_peace

      .. rubric:: Format
         :name: format

      A data frame with 884 observations on the following 13 variables.

      ``country``
         a character vector for an English country name of the
         conflict-affected country

      ``year``
         a numeric vector for the year

      ``iso3c``
         a three-character ISO code of the conflict-affected country

      ``region``
         a character vector for the region of the conflict-affected
         country

      ``chn_oda``
         a numeric vector for the amount of Chinese ODA in the
         conflict-affected country

      ``n_chnproj``
         a numeric vector for the number of Chinese ODA projects in the
         conflict-affected country

      ``other_oda``
         a numeric vector for the amount of ODA from other sources for
         the conflict-affected country

      ``gdppc``
         a numeric vector for GDP per capita of the conflict-affected
         country

      ``tnrr``
         a numeric vector for total natural resource rents in the
         conflict-affected country

      ``chn_unvs``
         a numeric vector for the similarity in voting with China in the
         UN General Assembly

      ``fdi_stock``
         a numeric vector for Chinese FDI stock in the conflict-affected
         country

      ``bdp100k``
         a numeric vector for battle-deaths in the conflict-affected
         country

      ``logotherodadiff1y``
         a numeric vector for the logged and lagged difference in
         Chinese ODA and ODA from other sources

      .. rubric:: Details
         :name: details

      The ``logotherodadiff1y`` column comes as is from the replication
      data set. It seems to make use of ODA information prior to the
      start of the panel that is not available in their replication
      data. You could recreate it by taking a log-transformation of the
      ``other_oda`` column and subtracting the first-order lag from the
      second-order lag.

      I will defer to the user to do their own log transformations of
      these data for the cause of replication. Read the supporting
      article for more information.

      .. rubric:: References
         :name: references

      Jung, Yeonju and Karina Shyrokykh. 2024. "Needs or Interests:
      Drivers of China's Peace Engagement in Conflict-affected
      Countries." *International Peacekeeping* 31(5): 553-74.
