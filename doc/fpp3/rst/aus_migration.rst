.. container::

   .. container::

      ============= ===============
      aus_migration R Documentation
      ============= ===============

      .. rubric:: Australian migration data
         :name: australian-migration-data

      .. rubric:: Description
         :name: description

      Net Overseas Migration (NOM) to Australia.

      .. rubric:: Format
         :name: format

      Time series of class 'tsibble'

      .. rubric:: Details
         :name: details

      ``aus_migration`` contains quarterly data with one measured
      variable:

      +----------+----------------------------------------------------------+
      | ``NOM``: | The net gain or loss of population through immigration   |
      |          | to Australia and emigration from Australia               |
      +----------+----------------------------------------------------------+
      |          |                                                          |
      +----------+----------------------------------------------------------+

      from 1981 Q2 to 2023 Q3 for the 6 states and 2 territories of
      Australia, indexed by:

      ============ =============
      ``Quarter``: Year-quarter.
      \            
      ============ =============

      NOM is based on an international traveller's duration of stay
      being in or out of Australia for 12 months or more, over a 16
      month period.

      Each series is uniquely identified using the key:

      +------------------------------------+
      | ``State``: The state or territory. |
      +------------------------------------+
      |                                    |
      +------------------------------------+

      .. rubric:: Source
         :name: source

      Australian Bureau of Statistics.
      https://www.abs.gov.au/statistics/people/population/national-state-and-territory-population/dec-2023.
      Cat No. 310102.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         aus_migration
