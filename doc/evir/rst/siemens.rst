.. container::

   ======= ===============
   siemens R Documentation
   ======= ===============

   .. rubric:: Daily Log Returns on Siemens Share Price
      :name: siemens

   .. rubric:: Description
      :name: description

   These data are the daily log returns on Siemens share price from
   Tuesday 2nd January 1973 until Tuesday 23rd July 1996. The data are
   contained in a numeric vector. The dates of each observation are
   contained in a ``times`` attribute, which is an object of class
   ``"POSIXct"`` (see ``DateTimeClasses``). Note that these data form an
   irregular time series because no trading takes place at the weekend.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(siemens)

   .. rubric:: Format
      :name: format

   A numeric vector containing 6146 observations, with a ``times``
   attribute which is a ``POSIXct`` object of the same length.
