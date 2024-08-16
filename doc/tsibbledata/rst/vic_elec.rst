.. container::

   .. container::

      ======== ===============
      vic_elec R Documentation
      ======== ===============

      .. rubric:: Half-hourly electricity demand for Victoria, Australia
         :name: half-hourly-electricity-demand-for-victoria-australia

      .. rubric:: Description
         :name: description

      ``vic_elec`` is a half-hourly ``tsibble`` with three values:

      ============ ==============================================
      Demand:      Total electricity demand in MWh.
      Temperature: Temperature of Melbourne (BOM site 086071).
      Holiday:     Indicator for if that day is a public holiday.
      \            
      ============ ==============================================

      .. rubric:: Format
         :name: format

      Time series of class ``tsibble``.

      .. rubric:: Details
         :name: details

      This data is for operational demand, which is the demand met by
      local scheduled generating units, semi-scheduled generating units,
      and non-scheduled intermittent generating units of aggregate
      capacity larger than 30 MWh, and by generation imports to the
      region. The operational demand excludes the demand met by
      non-scheduled non-intermittent generating units, non-scheduled
      intermittent generating units of aggregate capacity smaller than
      30 MWh, exempt generation (e.g. rooftop solar, gas tri-generation,
      very small wind farms, etc), and demand of local scheduled loads.
      It also excludes some very large industrial users (such as mines
      or smelters).

      .. rubric:: Source
         :name: source

      Australian Energy Market Operator.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(tsibble)
         vic_elec
