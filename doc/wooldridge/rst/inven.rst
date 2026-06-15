===== ===============
inven R Documentation
===== ===============

inven
-----

Description
~~~~~~~~~~~

Wooldridge Source: Economic Report of the President, 1997, Tables B-4,
B-20, B-61, and B-71. Data loads lazily.

Usage
~~~~~

.. code:: R

   data('inven')

Format
~~~~~~

A data.frame with 37 observations on 13 variables:

- **year:** 1959-1995

- **i3:** 3 mo. T-bill rate

- **inf:** CPI inflation rate

- **inven:** inventories, billions '92 $

- **gdp:** GDP, billions '92 $

- **r3:** real interest: i3 - inf

- **cinven:** inven - inven[\_n-1]

- **cgdp:** gdp - gdp[\_n-1]

- **cr3:** r3 - r3[\_n-1]

- **ci3:** i3 - i3[\_n-1]

- **cinf:** inf - inf[\_n-1]

- **ginven:** log(inven) - log(inven[\_n-1])

- **ggdp:** log(gdp) - log(gdp[\_n-1])

Used in Text
~~~~~~~~~~~~

pages 408, 444, 643, 830

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(inven)
