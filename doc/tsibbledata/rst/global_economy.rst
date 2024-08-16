.. container::

   .. container::

      ============== ===============
      global_economy R Documentation
      ============== ===============

      .. rubric:: Global economic indicators
         :name: global-economic-indicators

      .. rubric:: Description
         :name: description

      Economic indicators featured by the World Bank from 1960 to 2017.

      .. rubric:: Format
         :name: format

      Time series of class ``tsibble``

      .. rubric:: Details
         :name: details

      ``global_economy`` is an annual ``tsibble`` with six values:

      =========== ===============================================
      GDP:        Gross domestic product (in $USD February 2019).
      Growth:     Annual percentage growth in GDP.
      CPI:        Consumer price index (base year 2010).
      Imports:    Imports of goods and services (% of GDP).
      Exports:    Exports of goods and services (% of GDP).
      Population: Total population.
      =========== ===============================================

      Each series is uniquely identified by one key:

      ======== ====================================
      Country: The country or region of the series.
      \        
      ======== ====================================

      .. rubric:: Source
         :name: source

      The World Bank,
      http://datatopics.worldbank.org/world-development-indicators/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(tsibble)
         global_economy
