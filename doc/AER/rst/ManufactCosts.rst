============= ===============
ManufactCosts R Documentation
============= ===============

Manufacturing Costs Data
------------------------

Description
~~~~~~~~~~~

US time series data on prices and cost shares in manufacturing,
1947–1971.

Usage
~~~~~

::

   data("ManufactCosts")

Format
~~~~~~

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

Source
~~~~~~

Online complements to Greene (2003).

http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

References
~~~~~~~~~~

Berndt, E. and Wood, D. (1975). Technology, Prices, and the Derived
Demand for Energy. *Review of Economics and Statistics*, **57**,
376–384.

Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper Saddle
River, NJ: Prentice Hall.

See Also
~~~~~~~~

``Greene2003``

Examples
~~~~~~~~

::

   data("ManufactCosts")
   plot(ManufactCosts)
