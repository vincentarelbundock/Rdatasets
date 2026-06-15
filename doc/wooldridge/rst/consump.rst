======= ===============
consump R Documentation
======= ===============

consump
-------

Description
~~~~~~~~~~~

Wooldridge Source: I collected these data from the 1997 Economic Report
of the President. Specifically, the data come from Tables B-71, 15, 29,
and 32. Data loads lazily.

Usage
~~~~~

.. code:: R

   data('consump')

Format
~~~~~~

A data.frame with 37 observations on 24 variables:

- **year:** 1959-1995

- **i3:** 3 mo. T-bill rate

- **inf:** inflation rate; CPI

- **rdisp:** disp. inc., 1992 $, bils.

- **rnondc:** nondur. cons., 1992 $, bils.

- **rserv:** services, 1992 $, bils.

- **pop:** population, 1000s

- **y:** per capita real disp. inc.

- **rcons:** rnondc + rserv

- **c:** per capita real cons.

- **r3:** i3 - inf; real ex post int.

- **lc:** log(c)

- **ly:** log(y)

- **gc:** lc - lc[\_n-1]

- **gy:** ly - ly[\_n-1]

- **gc_1:** gc[\_n-1]

- **gy_1:** gy[\_n-1]

- **r3_1:** r3[\_n-1]

- **lc_ly:** lc - ly

- **lc_ly_1:** lc_ly[\_n-1]

- **gc_2:** gc[\_n-2]

- **gy_2:** gy[\_n-2]

- **r3_2:** r3[\_n-2]

- **lc_ly_2:** lc_ly[\_n-2]

Notes
~~~~~

For a student interested in time series methods, updating this data set
and using it in a manner similar to that in the text could be acceptable
as a final project.

Used in Text: pages 377-378, 408-409, 442, 570-571, 579, 673

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(consump)
