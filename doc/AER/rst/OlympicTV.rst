========= ===============
OlympicTV R Documentation
========= ===============

Television Rights for Olympic Games
-----------------------------------

Description
~~~~~~~~~~~

Television rights for Olympic Games for US networks (in millions USD).

Usage
~~~~~

::

   data("OlympicTV")

Format
~~~~~~

A data frame with 10 observations and 2 variables.

rights
   time series of television rights (in million USD),

network
   factor coding television network.

Source
~~~~~~

Online complements to Franses (1998).

References
~~~~~~~~~~

Franses, P.H. (1998). *Time Series Models for Business and Economic
Forecasting*. Cambridge, UK: Cambridge University Press.

See Also
~~~~~~~~

``Franses1998``

Examples
~~~~~~~~

::

   data("OlympicTV")
   plot(OlympicTV$rights)
