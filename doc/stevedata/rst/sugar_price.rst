.. container::

   =========== ===============
   sugar_price R Documentation
   =========== ===============

   .. rubric:: IMF Primary Commodity Price Data for Sugar
      :name: imf-primary-commodity-price-data-for-sugar

   .. rubric:: Description
      :name: description

   This is primary commodity price data for sugar globally, in the
   United States, and in Europe for every month from 1980 to (roughly)
   the present. Prices are nominal U.S. cents per pound and are not
   seasonally adjusted ("NSA").

   .. rubric:: Usage
      :name: usage

   ::

      sugar_price

   .. rubric:: Format
      :name: format

   A data frame with 1,316 observations on the following 3 variables.

   ``date``
      a date

   ``category``
      the category (either the U.S., global, or Europe)

   ``value``
      the price of sugar in U.S. cents per pound (NSA, nominal)

   .. rubric:: Details
      :name: details

   The price data for Europe do not appear to be updated as regularly as
   the global and U.S. prices. Thus, the last month in the data for
   Europe are June 2017. For that reason, I elected to make a data set
   of these data for posterity's sake.

   .. rubric:: Source
      :name: source

   International Monetary Fund
