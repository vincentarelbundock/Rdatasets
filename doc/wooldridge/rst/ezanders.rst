======== ===============
ezanders R Documentation
======== ===============

ezanders
--------

Description
~~~~~~~~~~~

Wooldridge Source: L.E. Papke (1994), “Tax Policy and Urban Development:
Evidence from the Indiana Enterprise Zone Program,” Journal of Public
Economics 54, 37-49. Professor Papke kindly provided these data. Data
loads lazily.

Usage
~~~~~

.. code:: R

   data('ezanders')

Format
~~~~~~

A data.frame with 108 observations on 25 variables:

- **month:** name of month

- **uclms:** unemployment claims

- **ez:** =1 if enterprise zone

- **year:** 1980 through 1988

- **y81:** =1 if year == 1981

- **y82:**

- **y83:**

- **y84:**

- **y85:**

- **y86:**

- **y87:**

- **y88:**

- **luclms:** log(uclms)

- **jan:** =1 if month == JAN

- **feb:**

- **mar:**

- **apr:**

- **may:**

- **jun:**

- **jul:**

- **aug:**

- **sep:**

- **oct:**

- **nov:**

- **dec:**

Notes
~~~~~

These are actually monthly unemployment claims for the Anderson
enterprise zone. Papke used annualized data, across many zones and
non-zones, in her original analysis.

Used in Text: page 377

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(ezanders)
