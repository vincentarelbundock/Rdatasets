==== ===============
wine R Documentation
==== ===============

wine
----

Description
~~~~~~~~~~~

Wooldridge Source: These data were reported in a New York Times article,
December 28, 1994. Data loads lazily.

Usage
~~~~~

.. code:: R

   data('wine')

Format
~~~~~~

A data.frame with 21 observations on 5 variables:

- **country:**

- **alcohol:** liters alcohol from wine, per capita

- **deaths:** deaths per 100,000

- **heart:** heart disease dths per 100,000

- **liver:** liver disease dths per 100,000

Notes
~~~~~

The dependent variables deaths, heart, and liver can be each regressed
against alcohol as nice simple regression examples. The conventional
wisdom is that wine is good for the heart but not for the liver,
something that is apparent in the regressions. Because the number of
observations is small, this can be a good data set to illustrate
calculation of the OLS estimates and statistics.

Used in Text: not used

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(wine)
