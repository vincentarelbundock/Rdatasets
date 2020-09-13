======= ===============
OECDGas R Documentation
======= ===============

Gasoline Consumption Data
-------------------------

Description
~~~~~~~~~~~

Panel data on gasoline consumption in 18 OECD countries over 19 years,
1960–1978.

Usage
~~~~~

::

   data("OECDGas")

Format
~~~~~~

A data frame containing 342 observations on 6 variables.

country
   Factor indicating country.

year
   Year.

gas
   Logarithm of motor gasoline consumption per car.

income
   Logarithm of real per-capita income.

price
   Logarithm of real motor gasoline price.

cars
   Logarithm of the stock of cars per-capita.

Source
~~~~~~

The data is from Baltagi (2002).

References
~~~~~~~~~~

Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

Baltagi, B.H. and Griffin, J.M. (1983). Gasoline Demand in the OECD: An
Application of Pooling and Testing Procedures. *European Economic
Review*, **22**, 117–137.

See Also
~~~~~~~~

``Baltagi2002``

Examples
~~~~~~~~

::

   data("OECDGas")

   library("lattice")
   xyplot(exp(cars) ~ year | country, data = OECDGas, type = "l")
   xyplot(exp(gas) ~ year | country, data = OECDGas, type = "l")
