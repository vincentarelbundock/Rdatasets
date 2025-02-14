.. container::

   .. container::

      ======== ===============
      bob_ross R Documentation
      ======== ===============

      .. rubric:: A Statistical Analysis of the Work of Bob Ross
         :name: a-statistical-analysis-of-the-work-of-bob-ross

      .. rubric:: Description
         :name: description

      The raw data behind the story "A Statistical Analysis of the Work
      of Bob Ross"
      https://fivethirtyeight.com/features/a-statistical-analysis-of-the-work-of-bob-ross/.
      An analysis using this data was contributed by Jonathan Bouchet as
      a package vignette at
      https://fivethirtyeightdata.github.io/fivethirtyeightdata/articles/bob_ross.html.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         bob_ross

      .. rubric:: Format
         :name: format

      A data frame with 403 rows representing episodes and 71 variables:

      episode
         Episode code

      season
         Season number

      episode_num
         Episode number

      title
         Title of episode

      apple_frame
         Present (1) or not (0)

      aurora_borealis
         Present (1) or not (0)

      barn
         Present (1) or not (0)

      beach
         Present (1) or not (0)

      boat
         Present (1) or not (0)

      bridge
         Present (1) or not (0)

      building
         Present (1) or not (0)

      bushes
         Present (1) or not (0)

      cabin
         Present (1) or not (0)

      cactus
         Present (1) or not (0)

      circle_frame
         Present (1) or not (0)

      cirrus
         Present (1) or not (0)

      cliff
         Present (1) or not (0)

      clouds
         Present (1) or not (0)

      conifer
         Present (1) or not (0)

      cumulus
         Present (1) or not (0)

      deciduous
         Present (1) or not (0)

      diane_andre
         Present (1) or not (0)

      dock
         Present (1) or not (0)

      double_oval_frame
         Present (1) or not (0)

      farm
         Present (1) or not (0)

      fence
         Present (1) or not (0)

      fire
         Present (1) or not (0)

      florida_frame
         Present (1) or not (0)

      flowers
         Present (1) or not (0)

      fog
         Present (1) or not (0)

      framed
         Present (1) or not (0)

      grass
         Present (1) or not (0)

      guest
         Present (1) or not (0)

      half_circle_frame
         Present (1) or not (0)

      half_oval_frame
         Present (1) or not (0)

      hills
         Present (1) or not (0)

      lake
         Present (1) or not (0)

      lakes
         Present (1) or not (0)

      lighthouse
         Present (1) or not (0)

      mill
         Present (1) or not (0)

      moon
         Present (1) or not (0)

      mountain
         Present (1) or not (0)

      mountains
         Present (1) or not (0)

      night
         Present (1) or not (0)

      ocean
         Present (1) or not (0)

      oval_frame
         Present (1) or not (0)

      palm_trees
         Present (1) or not (0)

      path
         Present (1) or not (0)

      person
         Present (1) or not (0)

      portrait
         Present (1) or not (0)

      rectangle_3d_frame
         Present (1) or not (0)

      rectangular_frame
         Present (1) or not (0)

      river
         Present (1) or not (0)

      rocks
         Present (1) or not (0)

      seashell_frame
         Present (1) or not (0)

      snow
         Present (1) or not (0)

      snowy_mountain
         Present (1) or not (0)

      split_frame
         Present (1) or not (0)

      steve_ross
         Present (1) or not (0)

      structure
         Present (1) or not (0)

      sun
         Present (1) or not (0)

      tomb_frame
         Present (1) or not (0)

      tree
         Present (1) or not (0)

      trees
         Present (1) or not (0)

      triple_frame
         Present (1) or not (0)

      waterfall
         Present (1) or not (0)

      waves
         Present (1) or not (0)

      windmill
         Present (1) or not (0)

      window_frame
         Present (1) or not (0)

      winter
         Present (1) or not (0)

      wood_framed
         Present (1) or not (0)

      .. rubric:: Source
         :name: source

      See https://github.com/fivethirtyeight/data/tree/master/bob-ross

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # To convert data frame to tidy data (long) format, run:
         library(dplyr)
         library(tidyr)
         library(stringr)
         bob_ross_tidy <- bob_ross %>%
           pivot_longer(-c(episode, season, episode_num, title), 
              names_to = "object", values_to = "present") %>%
           mutate(present = as.logical(present)) %>%
           arrange(episode, object)
