===== ===============
smoke R Documentation
===== ===============

smoke
-----

Description
~~~~~~~~~~~

Wooldridge Source: J. Mullahy (1997), “Instrumental-Variable Estimation
of Count Data Models: Applications to Models of Cigarette Smoking
Behavior,” Review of Economics and Statistics 79, 596-593. Professor
Mullahy kindly provided the data. Data loads lazily.

Usage
~~~~~

.. code:: R

   data('smoke')

Format
~~~~~~

A data.frame with 807 observations on 10 variables:

- **educ:** years of schooling

- **cigpric:** state cig. price, cents/pack

- **white:** =1 if white

- **age:** in years

- **income:** annual income, $

- **cigs:** cigs. smoked per day

- **restaurn:** =1 if rest. smk. restrictions

- **lincome:** log(income)

- **agesq:** age^2

- **lcigpric:** log(cigprice)

Notes
~~~~~

If you want to do a “fancy” IV version of Computer Exercise C16.1, you
could estimate a reduced form count model for cigs using the Poisson
regression methods in Section 17.3, and then use the fitted values as an
IV for cigs. Presumably, this would be for a fairly advanced class.

Used in Text: pages 183, 288-289, 298, 301, 578, 627

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(smoke)
