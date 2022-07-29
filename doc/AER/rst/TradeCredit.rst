.. container::

   =========== ===============
   TradeCredit R Documentation
   =========== ===============

   .. rubric:: Trade Credit and the Money Market
      :name: trade-credit-and-the-money-market

   .. rubric:: Description
      :name: description

   Macroeconomic time series data from 1946 to 1966 on trade credit and
   the money market.

   .. rubric:: Usage
      :name: usage

   ::

      data("TradeCredit")

   .. rubric:: Format
      :name: format

   An annual multiple time series from 1946 to 1966 on 7 variables.

   trade
      Nominal total trade money.

   reserve
      Nominal effective reserve money.

   gnp
      GNP in current dollars.

   utilization
      Degree of market utilization.

   interest
      Short-term rate of interest.

   size
      Mean real size of the representative economic unit (1939 = 100).

   price
      GNP price deflator (1958 = 100).

   .. rubric:: Source
      :name: source

   The data are from Baltagi (2002).

   .. rubric:: References
      :name: references

   Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

   Laffer, A.B. (1970). Trade Credit and the Money Market. *Journal of
   Political Economy*, **78**, 239–267.

   .. rubric:: See Also
      :name: see-also

   ``Baltagi2002``

   .. rubric:: Examples
      :name: examples

   ::

      data("TradeCredit")
      plot(TradeCredit)
