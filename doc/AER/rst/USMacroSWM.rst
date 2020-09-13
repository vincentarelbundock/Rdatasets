========== ===============
USMacroSWM R Documentation
========== ===============

Monthly US Macroeconomic Data (1947–2004, Stock \\& Watson)
-----------------------------------------------------------

Description
~~~~~~~~~~~

Time series data on 4 US macroeconomic variables for 1947–2004.

Usage
~~~~~

::

   data("USMacroSWM")

Format
~~~~~~

A monthly multiple time series from 1947(1) to 2004(4) with 4 variables.

production
   index of industrial production.

oil
   oil price shocks, starting 1948(1).

cpi
   all-items consumer price index.

expenditure
   personal consumption expenditures price deflator, starting 1959(1).

Source
~~~~~~

Online complements to Stock and Watson (2007).

References
~~~~~~~~~~

Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*, 2nd
ed. Boston: Addison Wesley.

See Also
~~~~~~~~

``StockWatson2007``, ``USMacroSW``, ``USMacroSWQ``, ``USMacroB``,
``USMacroG``

Examples
~~~~~~~~

::

   data("USMacroSWM")
   plot(USMacroSWM)
