======= ===============
ceosal2 R Documentation
======= ===============

ceosal2
-------

Description
~~~~~~~~~~~

Wooldridge Source: See CEOSAL1.RAW Data loads lazily.

Usage
~~~~~

.. code:: R

   data('ceosal2')

Format
~~~~~~

A data.frame with 177 observations on 15 variables:

- **salary:** 1990 compensation, $1000s

- **age:** in years

- **college:** =1 if attended college

- **grad:** =1 if attended graduate school

- **comten:** years with company

- **ceoten:** years as ceo with company

- **sales:** 1990 firm sales, millions

- **profits:** 1990 profits, millions

- **mktval:** market value, end 1990, mills.

- **lsalary:** log(salary)

- **lsales:** log(sales)

- **lmktval:** log(mktval)

- **comtensq:** comten^2

- **ceotensq:** ceoten^2

- **profmarg:** profits as percent of sales

Notes
~~~~~

Compared with CEOSAL1.RAW, in this CEO data set more information about
the CEO, rather than about the company, is included.

Used in Text: pages 64, 111, 163, 214, 335, 699

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(ceosal2)
