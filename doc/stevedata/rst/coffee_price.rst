============ ===============
coffee_price R Documentation
============ ===============

The Primary Commodity Price for Coffee (Arabica, Robustas)
----------------------------------------------------------

Description
~~~~~~~~~~~

This is primary commodity price data for coffee (Arabica, Robustas) from
1980 to the present. I manually update these data since FRED's coverage
since 2017 has been spotty.

Usage
~~~~~

::

   coffee_price

Format
~~~~~~

A data frame with 489 observations on the following 3 variables.

``date``
   the date (year-month)

``arabica``
   the price (monthly average) of mild Arabica, via International Coffee
   Organization data, in nominal US cents per pound

``robustas``
   the price (monthly average) of Robustas, via International Coffee
   Organization data, in nominal US cents per pound

Details
~~~~~~~

Data come from International Monetary Fund (Primary Commodity Prices)
and International Coffee Organization. The IMF adds these prices are
global and the New York cash price, ex-dock
