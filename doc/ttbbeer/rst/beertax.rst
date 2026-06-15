======= ===============
beertax R Documentation
======= ===============

The beertax dataset
-------------------

Description
~~~~~~~~~~~

This dataset contains a list of historical tax rates for beer per 31
gallon Bbl. from TTB.

Usage
~~~~~

.. code:: R

   beertax

Format
~~~~~~

A data frame with 10 observations of 3 variables:

FROM
   FROM, date of starting tax rate. The first date does not have a
   listed day, so 09/01/1862 is used.

TO
   TO, date of ending tax rate. The last row is considered the present
   day rate indicated by the package creation date.

RATE
   RATE, in dollars. The last two entries are originally '$9/$7' and
   '$18/$' respectively.

Source
~~~~~~

http://catalog.data.gov/dataset/historical-tax-rates
