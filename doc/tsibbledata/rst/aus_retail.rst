.. container::

   .. container::

      ========== ===============
      aus_retail R Documentation
      ========== ===============

      .. rubric:: Australian retail trade turnover
         :name: australian-retail-trade-turnover

      .. rubric:: Description
         :name: description

      ``aus_retail`` is a monthly ``tsibble`` with one value:

      ========= ===============================
      Turnover: Retail turnover in $Million AUD
      \         
      ========= ===============================

      .. rubric:: Format
         :name: format

      Time series of class ``tsibble``

      .. rubric:: Details
         :name: details

      Each series is uniquely identified using two keys:

      ========= ===================================
      State:    The Australian state (or territory)
      Industry: The industry of retail trade
      \         
      ========= ===================================

      .. rubric:: Source
         :name: source

      Australian Bureau of Statistics, catalogue number 8501.0, table
      11.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(tsibble)
         aus_retail
