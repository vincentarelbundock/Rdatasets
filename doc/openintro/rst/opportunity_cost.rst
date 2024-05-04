.. container::

   .. container::

      ================ ===============
      opportunity_cost R Documentation
      ================ ===============

      .. rubric:: Opportunity cost of purchases
         :name: opportunity-cost-of-purchases

      .. rubric:: Description
         :name: description

      In a study on opportunity cost, 150 students were given the
      following statement: "Imagine that you have been saving some extra
      money on the side to make some purchases, and on your most recent
      visit to the video store you come across a special sale on a new
      video. This video is one with your favorite actor or actress, and
      your favorite type of movie (such as a comedy, drama, thriller,
      etc.). This particular video that you are considering is one you
      have been thinking about buying for a long time. It is available
      for a special sale price of $14.99. What would you do in this
      situation? Please circle one of the options below." Half of the
      students were given the following two options: (A) Buy this
      entertaining video. (B) Not buy this entertaining video. The other
      half were given the following two options (note the modified
      option B): (A) Buy this entertaining video. (B) Not buy this
      entertaining video. Keep the $14.99 for other purchases. The
      results of this study are in this dataset.

      .. rubric:: Usage
         :name: usage

      ::

         opportunity_cost

      .. rubric:: Format
         :name: format

      A data frame with 150 observations on the following 2 variables.

      group
         a factor with levels ``control`` and ``treatment``

      decision
         a factor with levels ``buy video`` and ``not buy video``

      .. rubric:: Source
         :name: source

      Frederick S, Novemsky N, Wang J, Dhar R, Nowlis S. 2009.
      Opportunity Cost Neglect. Journal of Consumer Research 36:
      553-561.

      .. rubric:: Examples
         :name: examples

      ::

         library(ggplot2)

         table(opportunity_cost)

         ggplot(opportunity_cost, aes(y = group, fill = decision)) +
           geom_bar(position = "fill")
