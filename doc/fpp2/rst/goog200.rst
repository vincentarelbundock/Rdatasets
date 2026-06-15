==== ===============
goog R Documentation
==== ===============

Daily closing stock prices of Google Inc
----------------------------------------

Description
~~~~~~~~~~~

Closing stock prices of GOOG from the NASDAQ exchange, for 1000
consecutive trading days between 25 February 2013 and 13 February 2017.
Adjusted for splits. ``goog200`` contains the first 200 observations
from ``goog``.

Format
~~~~~~

Daily time series of class ``ts``.

Source
~~~~~~

https://finance.yahoo.com/quote/GOOG/history/

Examples
~~~~~~~~

.. code:: R


   autoplot(goog)
