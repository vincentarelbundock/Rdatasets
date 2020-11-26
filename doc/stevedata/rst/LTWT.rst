==== ===============
LTWT R Documentation
==== ===============

"Let Them Watch TV"
-------------------

Description
~~~~~~~~~~~

"Let Them Watch TV": These data contain price indices for various items
for the general urban consumer. Categories include medical services,
college tuition, college textbooks, child care, housing, food and
beverages, all items (i.e. general CPI), new vehicles, apparel, and
televisions. The base period in value was originally the 1982-4 average,
but I converted the base period to January 2000. I use these data for
in-class discussion about how liberalized trade has made consumer
electronics (like TVs) fractions of their past prices. Yet, young adults
face mounting costs for college, child-raising, and health care that
government policy has failed to address.

Usage
~~~~~

::

   LTWT

Format
~~~~~~

A data frame with 2377 observations on the following 3 variables.

``date``
   a date

``category``
   a factor for the particular category

``value``
   the price index. Base: January 2000

Details
~~~~~~~

Inspiration comes from a blog post titled "Chart of the day (century?):
Price changes 1997 to 2017", which was published by the American
Enterprise Institute on Feb. 2, 2018.

Source
~~~~~~

Bureau of Labor Statistics, via the ``blscrapeR`` package.
