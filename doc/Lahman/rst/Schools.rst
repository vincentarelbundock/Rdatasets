.. container::

   .. container::

      ======= ===============
      Schools R Documentation
      ======= ===============

      .. rubric:: Schools table
         :name: schools-table

      .. rubric:: Description
         :name: description

      Information on schools players attended, by school

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Schools)

      .. rubric:: Format
         :name: format

      A data frame with 1241 observations on the following 5 variables.

      ``schoolID``
         school ID code

      ``name_full``
         school name

      ``city``
         city where school is located

      ``state``
         state where school's city is located

      ``country``
         country where school is located

      .. rubric:: Source
         :name: source

      Lahman, S. (2024) Lahman's Baseball Database, 1871-2023, 2024
      version, http://www.seanlahman.com/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         require("dplyr")

         # How many different schools are listed in each state?
         table(Schools$state)
          
         # How many different schools are listed in each country?
         table(Schools$country)

         # Top 20 schools 
         schoolInfo <- Schools %>% select(-country)

         schoolCount <- CollegePlaying %>%
                          group_by(schoolID) %>%
                          summarise(players = length(schoolID)) %>%
                          left_join(schoolInfo, by = "schoolID") %>%
                          arrange(desc(players)) 
         head(schoolCount, 20)

         # sum counts by state
         schoolStates <- schoolCount %>%
                           group_by(state) %>%
                           summarise(players = sum(players),
                                     schools = length(state))
         str(schoolStates)
         summary(schoolStates)
