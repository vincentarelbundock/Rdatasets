===== ===============
bwght R Documentation
===== ===============

bwght
-----

Description
~~~~~~~~~~~

Wooldridge Source: J. Mullahy (1997), “Instrumental-Variable Estimation
of Count Data Models: Applications to Models of Cigarette Smoking
Behavior,” Review of Economics and Statistics 79, 596-593. Professor
Mullahy kindly provided the data. He obtained them from the 1988
National Health Interview Survey. Data loads lazily.

Usage
~~~~~

.. code:: R

   data('bwght')

Format
~~~~~~

A data.frame with 1388 observations on 14 variables:

- **faminc:** 1988 family income, $1000s

- **cigtax:** cig. tax in home state, 1988

- **cigprice:** cig. price in home state, 1988

- **bwght:** birth weight, ounces

- **fatheduc:** father's yrs of educ

- **motheduc:** mother's yrs of educ

- **parity:** birth order of child

- **male:** =1 if male child

- **white:** =1 if white

- **cigs:** cigs smked per day while preg

- **lbwght:** log of bwght

- **bwghtlbs:** birth weight, pounds

- **packs:** packs smked per day while preg

- **lfaminc:** log(faminc)

Used in Text
~~~~~~~~~~~~

pages 18, 61, 110, 151, 165, 178, 184, 187-188, 258-259, 522-523

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(bwght)
