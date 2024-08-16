.. container::

   .. container::

      ============= ===============
      aus_livestock R Documentation
      ============= ===============

      .. rubric:: Australian livestock slaughter
         :name: australian-livestock-slaughter

      .. rubric:: Description
         :name: description

      Meat production in Australia for human consumption

      .. rubric:: Format
         :name: format

      Time series of class ``tsibble``

      .. rubric:: Details
         :name: details

      ``aus_livestock`` is a monthly ``tsibble`` with one value:

      ====== ==============================
      Count: Number of animals slaughtered.
      \      
      ====== ==============================

      Each series is uniquely identified using two keys:

      ======= ====================================
      Animal: The animal slaughtered.
      State:  The Australian state (or territory).
      \       
      ======= ====================================

      .. rubric:: Source
         :name: source

      Australian Bureau of Statistics, catalogue number 7218.0.55.001
      tables 1 to 7.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(tsibble)
         aus_livestock
