.. container::

   .. container::

      ============ ===============
      climbers_sub R Documentation
      ============ ===============

      .. rubric:: Himalayan Climber Data
         :name: himalayan-climber-data

      .. rubric:: Description
         :name: description

      A sub-sample of the Himalayan Database distributed through the R
      for Data Science TidyTuesday project. This dataset includes
      information on the results and conditions for various Himalayan
      climbing expeditions. Each row corresponds to a single member of a
      climbing expedition team.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         climbers_sub

      .. rubric:: Format
         :name: format

      A data frame with 2076 observations (1 per climber) and 22
      variables:

      expedition_id
         unique expedition identifier

      member_id
         unique climber identifier

      peak_id
         unique identifier of the expedition's destination peak

      peak_name
         name of the expedition's destination peak

      year
         year of expedition

      season
         season of expedition (Autumn, Spring, Summer, Winter)

      sex
         climber gender identity which the database oversimplifies to a
         binary category

      age
         climber age

      citizenship
         climber citizenship

      expedition_role
         climber's role in the expedition (eg: Co-Leader)

      hired
         whether the climber was a hired member of the expedition

      highpoint_metres
         the destination peak's highpoint (metres)

      success
         whether the climber successfully reached the destination

      solo
         whether the climber was on a solo expedition

      oxygen_used
         whether the climber utilized supplemental oxygen

      died
         whether the climber died during the expedition

      death_cause
      death_height_metres
      injured
         whether the climber was injured on the expedition

      injury_type
      injury_height_metres
      count
         number of climbers in the expedition

      height_metres
         height of the peak in meters

      first_ascent_year
         the year of the first recorded summit of the peak (though not
         necessarily the actual first summit!)

      .. rubric:: Source
         :name: source

      Original source: https://www.himalayandatabase.com/. Complete
      dataset distributed by:
      https://github.com/rfordatascience/tidytuesday/tree/master/data/2020/2020-09-22/.
