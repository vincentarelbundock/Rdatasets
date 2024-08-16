.. container::

   .. container::

      ========== ===============
      aus_births R Documentation
      ========== ===============

      .. rubric:: Australian births data
         :name: australian-births-data

      .. rubric:: Description
         :name: description

      Number of births in Australia.

      .. rubric:: Format
         :name: format

      Time series of class 'tsibble'

      .. rubric:: Details
         :name: details

      ``aus_births`` contains monthly data with one measured variable:

      =========== ================
      ``Births``: Number of births
      \           
      =========== ================

      from January 1975 to December 2021 for the 6 states and 2
      territories of Australia, indexed by:

      ========== ===========
      ``Month``: Year-month.
      \          
      ========== ===========

      #' Each series is uniquely identified using the key:

      +------------------------------------+
      | ``State``: The state or territory. |
      +------------------------------------+
      |                                    |
      +------------------------------------+

      .. rubric:: Source
         :name: source

      Australian Bureau of Statistics.
      https://www.abs.gov.au/statistics/people/population/births-australia/2022

      .. rubric:: Examples
         :name: examples

      .. code:: R

         aus_births
