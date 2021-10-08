.. container::

   ========== ===============
   USMacroSWQ R Documentation
   ========== ===============

   .. rubric:: Quarterly US Macroeconomic Data (1947–2004, Stock \\&
      Watson)
      :name: quarterly-us-macroeconomic-data-19472004-stock-watson

   .. rubric:: Description
      :name: description

   Time series data on 2 US macroeconomic variables for 1947–2004.

   .. rubric:: Usage
      :name: usage

   ::

      data("USMacroSWQ")

   .. rubric:: Format
      :name: format

   A quarterly multiple time series from 1947(1) to 2004(4) with 2
   variables.

   gdp
      real GDP for the United States in billions of chained (2000)
      dollars seasonally adjusted, annual rate.

   tbill
      3-month treasury bill rate. Quarterly averages of daily dates in
      percentage points at an annual rate.

   .. rubric:: Source
      :name: source

   Online complements to Stock and Watson (2007).

   .. rubric:: References
      :name: references

   Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*,
   2nd ed. Boston: Addison Wesley.

   .. rubric:: See Also
      :name: see-also

   ``StockWatson2007``, ``USMacroSW``, ``USMacroSWM``, ``USMacroB``,
   ``USMacroG``

   .. rubric:: Examples
      :name: examples

   ::

      data("USMacroSWQ")
      plot(USMacroSWQ)
