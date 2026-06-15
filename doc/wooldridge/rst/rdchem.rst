====== ===============
rdchem R Documentation
====== ===============

rdchem
------

Description
~~~~~~~~~~~

Wooldridge Source: From Businessweek R&D Scoreboard, October 25, 1991.
Data loads lazily.

Usage
~~~~~

.. code:: R

   data('rdchem')

Format
~~~~~~

A data.frame with 32 observations on 8 variables:

- **rd:** R&D spending, millions

- **sales:** firm sales, millions

- **profits:** profits, millions

- **rdintens:** rd as percent of sales

- **profmarg:** profits as percent of sales

- **salessq:** sales^2

- **lsales:** log(sales)

- **lrd:** log(rd)

Notes
~~~~~

It would be interesting to collect more recent data and see whether the
R&D/firm size relationship has changed over time.

Used in Text: pages 64, 139-140, 159-160, 204, 218, 327-329, 339

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(rdchem)
