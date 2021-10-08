.. container::

   ============= ===============
   ManufactCosts R Documentation
   ============= ===============

   .. rubric:: Manufacturing Costs Data
      :name: manufacturing-costs-data

   .. rubric:: Description
      :name: description

   US time series data on prices and cost shares in manufacturing,
   1947–1971.

   .. rubric:: Usage
      :name: usage

   ::

      data("ManufactCosts")

   .. rubric:: Format
      :name: format

   An annual multiple time series from 1947 to 1971 with 9 variables.

   cost
      Cost index.

   capitalcost
      Capital cost share.

   laborcost
      Labor cost share.

   energycost
      Energy cost share.

   materialscost
      Materials cost share.

   capitalprice
      Capital price.

   laborprice
      Labor price.

   energyprice
      Energy price.

   materialsprice
      Materials price.

   .. rubric:: Source
      :name: source

   Online complements to Greene (2003).

   http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

   .. rubric:: References
      :name: references

   Berndt, E. and Wood, D. (1975). Technology, Prices, and the Derived
   Demand for Energy. *Review of Economics and Statistics*, **57**,
   376–384.

   Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
   Saddle River, NJ: Prentice Hall.

   .. rubric:: See Also
      :name: see-also

   ``Greene2003``

   .. rubric:: Examples
      :name: examples

   ::

      data("ManufactCosts")
      plot(ManufactCosts)
