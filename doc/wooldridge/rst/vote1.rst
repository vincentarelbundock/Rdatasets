===== ===============
vote1 R Documentation
===== ===============

vote1
-----

Description
~~~~~~~~~~~

Wooldridge Source: From M. Barone and G. Ujifusa, The Almanac of
American Politics, 1992. Washington, DC: National Journal. Data loads
lazily.

Usage
~~~~~

.. code:: R

   data('vote1')

Format
~~~~~~

A data.frame with 173 observations on 10 variables:

- **state:** state postal code

- **district:** congressional district

- **democA:** =1 if A is democrat

- **voteA:** percent vote for A

- **expendA:** camp. expends. by A, $1000s

- **expendB:** camp. expends. by B, $1000s

- **prtystrA:** percent vote for president

- **lexpendA:** log(expendA)

- **lexpendB:** log(expendB)

- **shareA:** 100*(expendA/(expendA+expendB))

Used in Text
~~~~~~~~~~~~

pages 34, 39, 164, 221-222, 299, 699

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(vote1)
