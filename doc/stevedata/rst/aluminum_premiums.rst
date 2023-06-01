.. container::

   ================= ===============
   aluminum_premiums R Documentation
   ================= ===============

   .. rubric:: LME Aluminum Premiums Data
      :name: aluminum_premiums

   .. rubric:: Description
      :name: description

   A near daily data set on the price of aluminum premiums (USD/MT) for
   LME in the U.S., Western Europe, East Asia, and Southeast Asia. I
   like these data as illustrative of some of the shortsightedness of
   the aluminum tariffs that Donald Trump announced in March 2018. The
   tariffs had no discernible effect on manufacturing employment or
   earnings, but they created a supply shock that made aluminum more
   expensive.

   .. rubric:: Usage
      :name: usage

   ::

      aluminum_premiums

   .. rubric:: Format
      :name: format

   A data frame with 2,812 observations on the following 3 variables.

   ``date``
      a date

   ``group``
      a factor with levels of ``East Asia``, ``Southeast Asia``,
      ``United States``, and ``Western Europe``

   ``price``
      a numeric vector for the price of the LME aluminum premium

   .. rubric:: Details
      :name: details

   LME aluminum premiums (monthly contracts going out to 15 months) work
   alongside LME aluminum contracts to allow market participants to
   hedge the all-in price and physically deliver or receive premium
   aluminum warrants in non-queued LME premium warehouses.
