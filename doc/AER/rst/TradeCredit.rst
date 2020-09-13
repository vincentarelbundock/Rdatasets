=========== ===============
TradeCredit R Documentation
=========== ===============

Trade Credit and the Money Market
---------------------------------

Description
~~~~~~~~~~~

Macroeconomic time series data from 1946 to 1966 on trade credit and the
money market.

Usage
~~~~~

::

   data("TradeCredit")

Format
~~~~~~

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

Source
~~~~~~

The data are from Baltagi (2002).

References
~~~~~~~~~~

Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

Laffer, A.B. (1970). Trade Credit and the Money Market. *Journal of
Political Economy*, **78**, 239–267.

See Also
~~~~~~~~

``Baltagi2002``

Examples
~~~~~~~~

::

   data("TradeCredit")
   plot(TradeCredit)
