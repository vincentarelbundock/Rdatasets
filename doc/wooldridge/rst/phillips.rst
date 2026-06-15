======== ===============
phillips R Documentation
======== ===============

phillips
--------

Description
~~~~~~~~~~~

Wooldridge Source: Economic Report of the President, 2004, Tables B-42
and B-64. Data loads lazily.

Usage
~~~~~

.. code:: R

   data('phillips')

Format
~~~~~~

A data.frame with 56 observations on 7 variables:

- **year:** 1948 through 2003

- **unem:** civilian unemployment rate, percent

- **inf:** percentage change in CPI

- **inf_1:** inf[\_n-1]

- **unem_1:** unem[\_n-1]

- **cinf:** inf - inf_1

- **cunem:** unem - unem_1

Used in Text
~~~~~~~~~~~~

pages 355-356, 379, 390-391, 408, 409, 409, 418, 428, 443, 548-549, 642,
656, 659, 662, 672, 817.

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(phillips)
