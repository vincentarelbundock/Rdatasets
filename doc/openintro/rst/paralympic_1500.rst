.. container::

   .. container::

      =============== ===============
      paralympic_1500 R Documentation
      =============== ===============

      .. rubric:: Race time for Olympic and Paralympic 1500m.
         :name: race-time-for-olympic-and-paralympic-1500m.

      .. rubric:: Description
         :name: description

      Compiled gold medal times for the 1500m race in the Olympic Games
      and the Paralympic Games. The times given for contestants
      competing in the Paralympic Games are for athletes with different
      visual impairments; T11 indicates fully blind (with an option to
      race with a guide-runner) with T12 and T13 as lower levels of
      visual impairment.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         paralympic_1500

      .. rubric:: Format
         :name: format

      A data frame with 83 rows and 10 variables.

      year
         Year the games took place.

      city
         City of the games.

      country_of_games
         Country of the games.

      division
         Division: ``Men`` or ``Women``.

      type
         Type.

      name
         Name of the athlete.

      country_of_athlete
         Country of athlete.

      time
         Time of gold medal race, in m:s.

      time_min
         Time of gold medal race, in decimal minutes (min + sec/60).

      .. rubric:: Source
         :name: source

      https://www.paralympic.org/ and
      https://en.wikipedia.org/wiki/1500_metres_at_the_Olympics.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(ggplot2)
         library(dplyr)

         paralympic_1500 |>
           mutate(
             sight_level = case_when(
               type == "T11" ~ "total impairment",
               type == "T12" ~ "some impairment",
               type == "T13" ~ "some impairment",
               type == "Olympic" ~ "no impairment"
             )
           ) |>
           filter(division == "Men", year > 1920) |>
           filter(type == "Olympic" | type == "T11") |>
           ggplot(aes(x = year, y = time_min, color = sight_level, shape = sight_level)) +
           geom_point() +
           scale_x_continuous(breaks = seq(1924, 2020, by = 8)) +
           labs(
             title = "Men's Olympic and Paralympic 1500m race times",
             x = "Year",
             y = "Time of Race (minutes)",
             color = "Sight level",
             shape = "Sight level"
           )
