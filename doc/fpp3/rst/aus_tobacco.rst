.. container::

   .. container::

      =========== ===============
      aus_tobacco R Documentation
      =========== ===============

      .. rubric:: Australian cigarette and tobacco expenditure
         :name: australian-cigarette-and-tobacco-expenditure

      .. rubric:: Description
         :name: description

      The total household expenditure for cigarette and tobacco
      consumption (CTC) in Australia.

      .. rubric:: Format
         :name: format

      Time series of class 'tsibble'

      .. rubric:: Details
         :name: details

      ``aus_tobacco`` contains quarterly data with one measured
      variable:

      ================ =====================
      ``Expenditure``: The total expenditure
      \                
      ================ =====================

      from 1985 Q3 to 2023 Q4 for the 6 states and 2 territories of
      Australia, indexed by:

      ============ =============
      ``Quarter``: Year-quarter.
      \            
      ============ =============

      The prices are represented as a chain volume measure (a
      representation of constant prices) in billions of dollars.

      Each series is uniquely identified using the key:

      +------------------------------------+
      | ``State``: The state or territory. |
      +------------------------------------+
      |                                    |
      +------------------------------------+

      .. rubric:: Source
         :name: source

      Australian Bureau of Statistics.
      https://www.abs.gov.au/statistics/economy/national-accounts/australian-national-accounts-national-income-expenditure-and-product/mar-2024

      .. rubric:: Examples
         :name: examples

      .. code:: R

         aus_tobacco |> autoplot(Expenditure) + scale_y_log10()
