.. container::

   .. container::

      ============ ===============
      coffee_price R Documentation
      ============ ===============

      .. rubric:: The Primary Commodity Price for Coffee (Arabica,
         Robustas)
         :name: the-primary-commodity-price-for-coffee-arabica-robustas

      .. rubric:: Description
         :name: description

      This is primary commodity price data for coffee (Arabica,
      Robustas) from 1980 to the present. I manually update these data
      since FRED's coverage since 2017 has been spotty.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         coffee_price

      .. rubric:: Format
         :name: format

      A data frame with the following 3 variables.

      ``date``
         the date (year-month)

      ``arabica``
         the price (monthly average) of mild Arabica, via International
         Coffee Organization data, in nominal US cents per pound

      ``robustas``
         the price (monthly average) of Robustas, via International
         Coffee Organization data, in nominal US cents per pound

      .. rubric:: Details
         :name: details

      Data come from International Monetary Fund (Primary Commodity
      Prices) and International Coffee Organization. The IMF adds these
      prices are global and the New York cash price, ex-dock
