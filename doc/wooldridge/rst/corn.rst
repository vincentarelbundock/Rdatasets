==== ===============
corn R Documentation
==== ===============

corn
----

Description
~~~~~~~~~~~

Wooldridge Source: G.E. Battese, R.M. Harter, and W.A. Fuller (1988),
“An Error-Components Model for Prediction of County Crop Areas Using
Survey and Satellite Data,” Journal of the American Statistical
Association 83, 28-36. This small data set is reported in the article.
Data loads lazily.

Usage
~~~~~

.. code:: R

   data('corn')

Format
~~~~~~

A data.frame with 37 observations on 5 variables:

- **county:** county number

- **cornhec:** corn per hectare

- **soyhec:** soybeans per hectare

- **cornpix:** corn pixels per hectare

- **soypix:** soy pixels per hectare

Notes
~~~~~

You could use these data to illustrate simple regression when the
population intercept should be zero: no corn pixels should predict no
corn planted. The same can be done with the soybean measures in the data
set.

Used in Text: pages 791-792

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(corn)
