.. container::

   .. container::

      ================== ===============
      GermanUnemployment R Documentation
      ================== ===============

      .. rubric:: Unemployment in Germany Data
         :name: unemployment-in-germany-data

      .. rubric:: Description
         :name: description

      Time series of unemployment rate (in percent) in Germany.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("GermanUnemployment")

      .. rubric:: Format
         :name: format

      A quarterly multiple time series from 1962(1) to 1991(4) with 2
      variables.

      unadjusted
         Raw unemployment rate,

      adjusted
         Seasonally adjusted rate.

      .. rubric:: Source
         :name: source

      Online complements to Franses (1998).

      .. rubric:: References
         :name: references

      Franses, P.H. (1998). *Time Series Models for Business and
      Economic Forecasting*. Cambridge, UK: Cambridge University Press.

      .. rubric:: See Also
         :name: see-also

      ``Franses1998``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("GermanUnemployment")
         plot(GermanUnemployment, plot.type = "single", col = 1:2)
