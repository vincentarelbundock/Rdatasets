.. container::

   ========= ===============
   OlympicTV R Documentation
   ========= ===============

   .. rubric:: Television Rights for Olympic Games
      :name: OlympicTV

   .. rubric:: Description
      :name: description

   Television rights for Olympic Games for US networks (in millions
   USD).

   .. rubric:: Usage
      :name: usage

   ::

      data("OlympicTV")

   .. rubric:: Format
      :name: format

   A data frame with 10 observations and 2 variables.

   rights
      time series of television rights (in million USD),

   network
      factor coding television network.

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

      data("OlympicTV")
      plot(OlympicTV$rights)
