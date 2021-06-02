====== ===============
ukdemo R Documentation
====== ===============

United Kingdom Demographic Data
-------------------------------

Description
~~~~~~~~~~~

This data set comes from the Guardian's Data Blog and includes five
financial demographic variables.

Usage
~~~~~

::

   ukdemo

Format
~~~~~~

A data frame with 12 observations on the following 6 variables.

region
   Region in the United Kingdom

debt
   Average regional debt, not including mortgages, in pounds

unemployment
   Percent unemployment

house
   Average house price, in pounds

pay
   Average hourly pay, in pounds

rpi
   Retail price index, which is standardized to 100 for the entire UK,
   and lower index scores correspond to lower prices

Source
~~~~~~

The data was described in the Guardian Data Blog:
https://www.theguardian.com/news/datablog/interactive/2011/oct/27/debt-money-expert-facts,
retrieved 2011-11-01.

References
~~~~~~~~~~

Guardian Data Blog

Examples
~~~~~~~~

::


   library(ggplot2)

   ggplot(ukdemo, aes(x = pay, y = rpi)) +
     geom_point() +
     labs(x = "Average hourly pay", y = "Retail price index")

