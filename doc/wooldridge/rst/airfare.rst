======= ===============
airfare R Documentation
======= ===============

airfare
-------

Description
~~~~~~~~~~~

Wooldridge Source: Jiyoung Kwon, a former doctoral student in economics
at MSU, kindly provided these data, which she obtained from the Domestic
Airline Fares Consumer Report by the U.S. Department of Transportation.
Data loads lazily.

Usage
~~~~~

.. code:: R

   data('airfare')

Format
~~~~~~

A data.frame with 4596 observations on 14 variables:

- **year:** 1997, 1998, 1999, 2000

- **id:** route identifier

- **dist:** distance, in miles

- **passen:** avg. passengers per day

- **fare:** avg. one-way fare, $

- **bmktshr:** fraction market, biggest carrier

- **ldist:** log(distance)

- **y98:** =1 if year == 1998

- **y99:** =1 if year == 1999

- **y00:** =1 if year == 2000

- **lfare:** log(fare)

- **ldistsq:** ldist^2

- **concen:** = bmktshr

- **lpassen:** log(passen)

Notes
~~~~~

This data set nicely illustrates the different estimates obtained when
applying pooled OLS, random effects, and fixed effects.

Used in Text: pages 506-507, 581

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(airfare)
