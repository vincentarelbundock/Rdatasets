.. container::

   ====== ===============
   sp.raw R Documentation
   ====== ===============

   .. rubric:: SP Data to June 1993
      :name: sp.raw

   .. rubric:: Description
      :name: description

   The daily closing values of the S&P index from Monday 4th January
   1960 until Friday 11th June 1993. The data are contained in a numeric
   vector. The dates of each observation are contained in a ``times``
   attribute, which is an object of class ``"POSIXct"`` (see
   ``DateTimeClasses``).

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(sp.raw)

   .. rubric:: Format
      :name: format

   A numeric vector containing 8415 observations, with a ``times``
   attribute which is a ``POSIXct`` object of the same length.
