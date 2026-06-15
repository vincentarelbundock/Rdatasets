========= ===============
spirittax R Documentation
========= ===============

The spirittax dataset
---------------------

Description
~~~~~~~~~~~

This dataset contains a list of historical tax rates for distilled
spirits per proof gallon from TTB.

Usage
~~~~~

.. code:: R

   spirittax

Format
~~~~~~

A data frame with 15 observations of 3 variables:

FROM
   FROM, date of starting tax rate

TO
   TO, date of ending tax rate. The last row is considered the present
   day rate indicated by the package creation date.

RATE
   RATE, in dollars

Source
~~~~~~

http://catalog.data.gov/dataset/historical-tax-rates
