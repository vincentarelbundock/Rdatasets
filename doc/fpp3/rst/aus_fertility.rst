.. container::

   .. container::

      ============= ===============
      aus_fertility R Documentation
      ============= ===============

      .. rubric:: Australian fertility rates
         :name: australian-fertility-rates

      .. rubric:: Description
         :name: description

      ``aus_fertility`` contains annual data on one measured variable:

      ===== ===================================
      Rate: Fertility rate (per thousand women)
      \     
      ===== ===================================

      .. rubric:: Format
         :name: format

      Time series of class 'tsibble'

      .. rubric:: Details
         :name: details

      Each series is uniquely identified using two keys:

      ======= =================================
      Region: Australia, states and territories
      Age:    Age of the woman
      \       
      ======= =================================

      based on calendar year of registration data. It covers the period
      from 1975–2022.

      .. rubric:: Source
         :name: source

      Australian Bureau of Statistics.
      https://www.abs.gov.au/statistics/people/population/births-australia/2022

      .. rubric:: Examples
         :name: examples

      .. code:: R

         aus_fertility
