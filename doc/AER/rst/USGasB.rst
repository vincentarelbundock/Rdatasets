====== ===============
USGasB R Documentation
====== ===============

US Gasoline Market Data (1950–1987, Baltagi)
--------------------------------------------

Description
~~~~~~~~~~~

Time series data on the US gasoline market.

Usage
~~~~~

::

   data("USGasB")

Format
~~~~~~

An annual multiple time series from 1950 to 1987 with 6 variables.

cars
   Stock of cars.

gas
   Consumption of motor gasoline (in 1000 gallons).

price
   Retail price of motor gasoline.

population
   Population.

gnp
   Real gross national product (in 1982 dollars).

deflator
   GNP deflator (1982 = 100).

Source
~~~~~~

The data are from Baltagi (2002).

References
~~~~~~~~~~

Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

See Also
~~~~~~~~

``Baltagi2002``, ``USGasG``

Examples
~~~~~~~~

::

   data("USGasB")
   plot(USGasB)
