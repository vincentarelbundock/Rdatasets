.. container::

   .. container::

      ============= ===============
      daycare_fines R Documentation
      ============= ===============

      .. rubric:: Daycare fines
         :name: daycare-fines

      .. rubric:: Description
         :name: description

      Researchers tested the deterrence hypothesis which predicts that
      the introduction of a penalty will reduce the occurrence of the
      behavior subject to the fine, with the condition that the fine
      leaves everything else unchanged by instituting a fine for late
      pickup at daycare centers. For this study, they worked with 10
      volunteer daycare centers that did not originally impose a fine to
      parents for picking up their kids late. They randomly selected 6
      of these daycare centers and instituted a monetary fine (of a
      considerable amount) for picking up children late and then removed
      it. In the remaining 4 daycare centers no fine was introduced. The
      study period was divided into four: before the fine (weeks 1–4),
      the first 4 weeks with the fine (weeks 5-8), the entire period
      with the fine (weeks 5–16), and the after fine period (weeks
      17-20). Throughout the study, the number of kids who were picked
      up late was recorded each week for each daycare. The study found
      that the number of late-coming parents increased significantly
      when the fine was introduced, and no reduction occurred after the
      fine was removed.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         daycare_fines

      .. rubric:: Format
         :name: format

      A data frame with 200 observations on the following 7 variables.

      center
         Daycare center id.

      group
         Study group: ``test`` (fine instituted) or ``control`` (no
         fine).

      children
         Number of children at daycare center.

      week
         Week of study.

      late_pickups
         Number of late pickups for a given week and daycare center.

      study_period_4
         Period of study, divided into 4 periods: ``⁠before fine⁠``,
         ``⁠first 4 weeks with fine⁠``, ``⁠last 8 weeks with fine⁠``,
         ``⁠after fine⁠``

      study_period_3
         Period of study, divided into 4 periods: ``⁠before fine⁠``,
         ``⁠with fine⁠``, ``⁠after fine⁠``

      .. rubric:: Source
         :name: source

      Gneezy, Uri, and Aldo Rustichini. "A fine is a price." The Journal
      of Legal Studies 29, no. 1 (2000): 1-17.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)
         library(tidyr)
         library(ggplot2)

         # The following tables roughly match results presented in Table 2 of the source article
         # The results are only off by rounding for some of the weeks
         daycare_fines %>%
           group_by(center, study_period_4) %>%
           summarise(avg_late_pickups = mean(late_pickups), .groups = "drop") %>%
           pivot_wider(names_from = study_period_4, values_from = avg_late_pickups)

         daycare_fines %>%
           group_by(center, study_period_3) %>%
           summarise(avg_late_pickups = mean(late_pickups), .groups = "drop") %>%
           pivot_wider(names_from = study_period_3, values_from = avg_late_pickups)

         # The following plot matches Figure 1 of the source article
         daycare_fines %>%
           group_by(week, group) %>%
           summarise(avg_late_pickups = mean(late_pickups), .groups = "drop") %>%
           ggplot(aes(x = week, y = avg_late_pickups, group = group, color = group)) +
           geom_point() +
           geom_line()
