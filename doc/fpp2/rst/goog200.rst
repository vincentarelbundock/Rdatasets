.. container::

   ==== ===============
   goog R Documentation
   ==== ===============

   .. rubric:: Daily closing stock prices of Google Inc
      :name: goog

   .. rubric:: Description
      :name: description

   Closing stock prices of GOOG from the NASDAQ exchange, for 1000
   consecutive trading days between 25 February 2013 and 13 February
   2017. Adjusted for splits. ``goog200`` contains the first 200
   observations from ``goog``.

   .. rubric:: Format
      :name: format

   Daily time series of class ``ts``.

   .. rubric:: Source
      :name: source

   https://finance.yahoo.com/quote/GOOG/history

   .. rubric:: Examples
      :name: examples

   .. code:: R

      autoplot(goog)
