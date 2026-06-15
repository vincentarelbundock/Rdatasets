======= ===============
charity R Documentation
======= ===============

charity
-------

Description
~~~~~~~~~~~

Wooldridge Source: P.H. Franses and R. Paap (2001), Quantitative Models
in Marketing Research. Cambridge: Cambridge University Press. Professor
Franses kindly provided the data. Data loads lazily.

Usage
~~~~~

.. code:: R

   data('charity')

Format
~~~~~~

A data.frame with 4268 observations on 8 variables:

- **respond:** =1 if responded with gift

- **gift:** amount of gift, Dutch guilders

- **resplast:** =1 if responded to most recent mailing

- **weekslast:** number of weeks since last response

- **propresp:** response rate to mailings

- **mailsyear:** number of mailings per year

- **giftlast:** amount of most recent gift

- **avggift:** average of past gifts

Notes
~~~~~

This data set can be used to illustrate probit and Tobit models, and to
study the linear approximations to them.

Used in Text: pages 65, 112-113, 266-267, 628

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(charity)
