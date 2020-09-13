========== ===============
NaturalGas R Documentation
========== ===============

Natural Gas Data
----------------

Description
~~~~~~~~~~~

Panel data originating from 6 US states over the period 1967–1989.

Usage
~~~~~

::

   data("NaturalGas")

Format
~~~~~~

A data frame containing 138 observations on 10 variables.

state
   factor. State abbreviation.

statecode
   factor. State Code.

year
   factor coding year.

consumption
   Consumption of natural gas by the residential sector.

price
   Price of natural gas

eprice
   Price of electricity.

oprice
   Price of distillate fuel oil.

lprice
   Price of liquefied petroleum gas.

heating
   Heating degree days.

income
   Real per-capita personal income.

Source
~~~~~~

The data are from Baltagi (2002).

References
~~~~~~~~~~

Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

See Also
~~~~~~~~

``Baltagi2002``

Examples
~~~~~~~~

::

   data("NaturalGas")
   summary(NaturalGas)
