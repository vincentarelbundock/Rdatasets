==== ===============
okun R Documentation
==== ===============

okun
----

Description
~~~~~~~~~~~

Wooldridge Source: Economic Report of the President, 2007, Tables B-4
and B-42. Data loads lazily.

Usage
~~~~~

.. code:: R

   data('okun')

Format
~~~~~~

A data.frame with 47 observations on 4 variables:

- **year:** 1959 through 2005

- **pcrgdp:** percentage change in real GDP

- **unem:** civilian unemployment rate

- **cunem:** unem - unem[\_n-1]

Used in Text
~~~~~~~~~~~~

410, 444

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(okun)
