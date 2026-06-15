===== ===============
Italy R Documentation
===== ===============

Italian GDP Panel
-----------------

Description
~~~~~~~~~~~

Italian GDP growth panel for 21 regions covering the period 1951-1998
(millions of Lire, 1990=base). There are 1008 observations in total.

Usage
~~~~~

.. code:: R

   data("Italy")

Format
~~~~~~

A data frame with 2 columns, and 1008 rows.

year
   the first column, of type ``ordered``

gdp
   the second column, of type ``numeric``: millions of Lire, 1990=base

Source
~~~~~~

Giovanni Baiocchi

References
~~~~~~~~~~

Baiocchi, G. (2006), “Economic Applications of Nonparametric Methods,”
Ph.D. Thesis, University of York.

Examples
~~~~~~~~

.. code:: R

   data("Italy")
   with(Italy, {

   plot(ordered(year), gdp, xlab="Year (ordered factor)",
        ylab="GDP (millions of Lire, 1990=base)")

   })
