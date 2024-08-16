.. container::

   .. container::

      ============== ===============
      aus_production R Documentation
      ============== ===============

      .. rubric:: Quarterly production of selected commodities in
         Australia.
         :name: quarterly-production-of-selected-commodities-in-australia.

      .. rubric:: Description
         :name: description

      Quarterly estimates of selected indicators of manufacturing
      production in Australia.

      .. rubric:: Format
         :name: format

      Time series of class ``tsibble``.

      .. rubric:: Details
         :name: details

      ``aus_production`` is a half-hourly ``tsibble`` with six values:

      ============ ==================================================
      Beer:        Beer production in megalitres.
      Tobacco:     Tobacco and cigarette production in tonnes.
      Bricks:      Clay brick production in millions of bricks.
      Cement:      Portland cement production in thousands of tonnes.
      Electricity: Electricity production in gigawatt hours.
      Gas:         Gas production in petajoules.
      \            
      ============ ==================================================

      .. rubric:: Source
         :name: source

      Australian Bureau of Statistics, catalogue number 8301.0.55.001
      table 1.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(tsibble)
         aus_production
