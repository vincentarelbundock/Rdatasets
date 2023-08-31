.. container::

   ==== ===============
   DJIA R Documentation
   ==== ===============

   .. rubric:: Dow Jones Industrial Average, 1885-Present
      :name: DJIA

   .. rubric:: Description
      :name: description

   This data set contains the value of the Dow Jones Industrial Average
   on daily close for all available dates (to the best of my knowledge)
   from 1885 to the most recently concluded calendar year. Extensions
   shouldn't be too difficult with existing packages.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      DJIA

   .. rubric:: Format
      :name: format

   A data frame with 36951 observations on the following 2 variables.

   ``date``
      the date

   ``value``
      the value of the the Dow Jones Industrial Average at daily close

   .. rubric:: Details
      :name: details

   Observations before October 7, 1896 are from the single Dow Jones
   Average. Observations from October 7, 1896 to July 30, 1914 are from
   the first DJIA. Observations before the 1914 closure of the first
   DJIA in July 1914 come from MeasuringWorth. Observations from its
   reopening in Dec. 12, 1914 to January 28, 1985 come from Pinnacle
   Systems. Observations from January 29, 1985 to the most recent
   observation come from a ``quantmod`` call.

   .. rubric:: References
      :name: references

   Samuel H. Williamson, 'Daily Closing Value of the Dow Jones Average,
   1885 to Present,' MeasuringWorth, 2019.

   Jeffrey A. Ryan and Joshua M. Ulrich, '``quantmod``: Quantitative
   Financial Modelling Framework,' 2018.
