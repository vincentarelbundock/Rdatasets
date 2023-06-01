.. container::

   ====================== ===============
   mn_police_use_of_force R Documentation
   ====================== ===============

   .. rubric:: Minneapolis police use of force data.
      :name: mn_police_use_of_force

   .. rubric:: Description
      :name: description

   From Minneapolis, data from 2016 through August 2021

   .. rubric:: Usage
      :name: usage

   ::

      mn_police_use_of_force

   .. rubric:: Format
      :name: format

   A data frame with 12925 rows and 13 variables.

   response_datetime
      DateTime of police response.

   problem
      Problem that required police response.

   is_911_call
      Whether response was iniated by call to 911.

   primary_offense
      Offense of subject.

   subject_injury
      Whether subject was injured Yes/No/null.

   force_type
      Type of police force used.

   force_type_action
      Detail of police force used.

   race
      Race of subject.

   sex
      Gender of subject.

   age
      Age of subject.

   type_resistance
      Resistance to police by subject.

   precinct
      Precinct where response occurred.

   neighborhood
      Neighborhood where response occurred.

   .. rubric:: Source
      :name: source

   `Minneapolis <https://opendata.minneapolismn.gov/search?groupIds=79606f50581f4a33b14a19e61c4891f7>`__

   .. rubric:: Examples
      :name: examples

   ::

      library(dplyr)
      library(ggplot2)

      # List percent of total for each race
      mn_police_use_of_force %>%
        count (race) %>% 
        mutate (percent= round(n/sum(n)*100,2)) %>%
        arrange(desc(percent)) 

      # Display use of force count by three races
      race_sub = c("Asian","White","Black")
      ggplot(mn_police_use_of_force %>% filter(race %in% race_sub),
        aes(force_type, ..count.. ) ) +
        geom_point(stat = "count", size = 4) + 
        coord_flip()+
        facet_grid( race ~ . )+
        labs(x = "Force Type",
        y = "Number of Incidents")
