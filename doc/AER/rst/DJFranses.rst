.. container::

   ========= ===============
   DJFranses R Documentation
   ========= ===============

   .. rubric:: Dow Jones Index Data (Franses)
      :name: dow-jones-index-data-franses

   .. rubric:: Description
      :name: description

   Dow Jones index time series computed at the end of the week where
   week is assumed to run from Thursday to Wednesday.

   .. rubric:: Usage
      :name: usage

   ::

      data("DJFranses")

   .. rubric:: Format
      :name: format

   A weekly univariate time series from 1980(1) to 1994(42).

   .. rubric:: Source
      :name: source

   Online complements to Franses (1998).

   .. rubric:: References
      :name: references

   Franses, P.H. (1998). *Time Series Models for Business and Economic
   Forecasting*. Cambridge, UK: Cambridge University Press.

   .. rubric:: See Also
      :name: see-also

   ``Franses1998``

   .. rubric:: Examples
      :name: examples

   ::

      data("DJFranses")
      plot(DJFranses)
