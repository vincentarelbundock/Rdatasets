======= ===============
Schools R Documentation
======= ===============

Schools table
-------------

Description
~~~~~~~~~~~

Information on schools players attended, by school

Usage
~~~~~

.. code:: R

   data(Schools)

Format
~~~~~~

A data frame with 1287 observations on the following 5 variables.

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

Source
~~~~~~

Lahman, S. (2026) Lahman's Baseball Database, 1871-2025, 2026 version,
https://sabr.org/lahman-database/

Examples
~~~~~~~~

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
