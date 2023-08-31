.. container::

   ========== ===============
   elecdemand R Documentation
   ========== ===============

   .. rubric:: Half-hourly and daily electricity demand for Victoria,
      Australia, in 2014
      :name: elecdemand

   .. rubric:: Description
      :name: description

   ``elecdemand`` is a half-hourly time series matrix with three
   columns:

   +--------------+------------------------------------------------------+
   | Demand:      | Total electricity demand in GW for Victoria,         |
   |              | Australia, every half-hour during 2014.              |
   +--------------+------------------------------------------------------+
   | WorkDay:     | taking value 1 on work days, and 0 otherwise.        |
   +--------------+------------------------------------------------------+
   | Temperature: | half-hourly temperatures for Melbourne (BOM site     |
   |              | 086071).                                             |
   +--------------+------------------------------------------------------+

   ``elecdaily`` is a daily time series matrix with three columns:

   +--------------+------------------------------------------------------+
   | Demand:      | Total electricity demand in GW for Victoria,         |
   |              | Australia, every day during 2014.                    |
   +--------------+------------------------------------------------------+
   | WorkDay:     | taking value 1 on work days, and 0 otherwise.        |
   +--------------+------------------------------------------------------+
   | Temperature: | maximum daily temperatures for Melbourne (BOM site   |
   |              | 086071).                                             |
   +--------------+------------------------------------------------------+

   .. rubric:: Format
      :name: format

   Multiple time series of class ``mts``.

   .. rubric:: Details
      :name: details

   This data is for operational demand, which is the demand met by local
   scheduled generating units, semi-scheduled generating units, and
   non-scheduled intermittent generating units of aggregate capacity
   larger than 30 MW, and by generation imports to the region. The
   operational demand excludes the demand met by non-scheduled
   non-intermittent generating units, non-scheduled intermittent
   generating units of aggregate capacity smaller than 30 MW, exempt
   generation (e.g. rooftop solar, gas tri-generation, very small wind
   farms, etc), and demand of local scheduled loads. It also excludes
   some very large industrial users (such as mines or smelters).

   .. rubric:: Source
      :name: source

   Australian Energy Market Operator, and the Australian Bureau of
   Meteorology.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      summary(elecdemand)
      summary(elecdaily)
