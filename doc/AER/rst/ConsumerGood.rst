.. container::

   .. container::

      ============ ===============
      ConsumerGood R Documentation
      ============ ===============

      .. rubric:: Properties of a Fast-Moving Consumer Good
         :name: properties-of-a-fast-moving-consumer-good

      .. rubric:: Description
         :name: description

      Time series of distribution, market share and price of a
      fast-moving consumer good.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("ConsumerGood")

      .. rubric:: Format
         :name: format

      A weekly multiple time series from 1989(11) to 1991(9) with 3
      variables.

      distribution
         Distribution.

      share
         Market share.

      price
         Price.

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

         data("ConsumerGood")
         plot(ConsumerGood)
