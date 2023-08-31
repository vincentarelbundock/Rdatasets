.. container::

   ========== ===============
   USMacroSWM R Documentation
   ========== ===============

   .. rubric:: Monthly US Macroeconomic Data (1947–2004, Stock & Watson)
      :name: USMacroSWM

   .. rubric:: Description
      :name: description

   Time series data on 4 US macroeconomic variables for 1947–2004.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("USMacroSWM")

   .. rubric:: Format
      :name: format

   A monthly multiple time series from 1947(1) to 2004(4) with 4
   variables.

   production
      index of industrial production.

   oil
      oil price shocks, starting 1948(1).

   cpi
      all-items consumer price index.

   expenditure
      personal consumption expenditures price deflator, starting
      1959(1).

   .. rubric:: Source
      :name: source

   Online complements to Stock and Watson (2007).

   .. rubric:: References
      :name: references

   Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*,
   2nd ed. Boston: Addison Wesley.

   .. rubric:: See Also
      :name: see-also

   ``StockWatson2007``, ``USMacroSW``, ``USMacroSWQ``, ``USMacroB``,
   ``USMacroG``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("USMacroSWM")
      plot(USMacroSWM)
