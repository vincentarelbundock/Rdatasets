======== ===============
openness R Documentation
======== ===============

openness
--------

Description
~~~~~~~~~~~

Wooldridge Source: D. Romer (1993), “Openness and Inflation: Theory and
Evidence,” Quarterly Journal of Economics 108, 869-903. The data are
included in the article. Data loads lazily.

Usage
~~~~~

.. code:: R

   data('openness')

Format
~~~~~~

A data.frame with 114 observations on 12 variables:

- **open:** imports as percent GDP, '73-

- **inf:** avg. annual inflation, '73-

- **pcinc:** 1980 per capita inc., U.S. $

- **land:** land area, square miles

- **oil:** =1 if major oil producer

- **good:** =1 if 'good' data

- **lpcinc:** log(pcinc)

- **lland:** log(land)

- **lopen:** log(open)

- **linf:** log(inf)

- **opendec:** open/100

- **linfdec:** log(inf/100)

Used in Text
~~~~~~~~~~~~

pages 566, 579

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(openness)
