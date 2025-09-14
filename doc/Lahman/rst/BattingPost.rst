.. container::

   .. container::

      =========== ===============
      BattingPost R Documentation
      =========== ===============

      .. rubric:: BattingPost table
         :name: battingpost-table

      .. rubric:: Description
         :name: description

      Post season batting statistics

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(BattingPost)

      .. rubric:: Format
         :name: format

      A data frame with 17360 observations on the following 22
      variables.

      ``yearID``
         Year

      ``round``
         Level of playoffs

      ``playerID``
         Player ID code

      ``teamID``
         Team

      ``lgID``
         League; a factor with levels ``AA`` ``AL`` ``NL``

      ``G``
         Games

      ``AB``
         At Bats

      ``R``
         Runs

      ``H``
         Hits

      ``X2B``
         Doubles

      ``X3B``
         Triples

      ``HR``
         Homeruns

      ``RBI``
         Runs Batted In

      ``SB``
         Stolen Bases

      ``CS``
         Caught stealing

      ``BB``
         Base on Balls

      ``SO``
         Strikeouts

      ``IBB``
         Intentional walks

      ``HBP``
         Hit by pitch

      ``SH``
         Sacrifices

      ``SF``
         Sacrifice flies

      ``GIDP``
         Grounded into double plays

      .. rubric:: Details
         :name: details

      Variables ``X2B`` and ``X3B`` are named ``2B`` and ``3B`` in the
      original database

      .. rubric:: Source
         :name: source

      Lahman, S. (2025) Lahman's Baseball Database, 1871-2024, 2025
      version, https://sabr.org/lahman-database/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # Post-season batting data
         # Requires care since intra-league playoffs have evolved since 1969
         # Simplest case: World Series

         require("dplyr")

         # Create a sub-data frame for modern World Series play
         ws <- BattingPost %>%
                 filter(round == "WS" & yearID >= 1903) %>%
                 mutate(BA = 0 + (AB > 0) * round(H/AB, 3),
                        TB = H + X2B + 2 * X3B + 3 * HR,
                        SA = 0 + (AB > 0) * round(TB/AB, 3),
                        PA = AB + BB + IBB + HBP + SH + SF,
                        OB = H + BB + IBB + HBP,
                        OBP = 0 + (AB > 0) * round(OB/PA, 3) )

         # Players with most appearances in the WS:
         ws %>% group_by(playerID) %>%
                summarise(appearances = n()) %>%
                arrange(desc(appearances)) %>%
                head(., 10)

         # Non-Yankees with most WS appearances
         ws %>% filter(teamID != "NYA") %>%
                group_by(playerID) %>%
                summarise(appearances = n()) %>%
                arrange(desc(appearances)) %>%
                head(., 10)


         # Top ten single WS batting averages ( >= 10 AB )
         ws %>% filter(AB > 10) %>%
                arrange(desc(BA)) %>%
                head(., 10)

         # Top ten slugging averages in a single WS 
         ws %>% filter(AB > 10) %>%
           arrange(desc(SA)) %>%
           head(., 10)


         # Hitting stats for the 1946 St. Louis Cardinals, ordered by BA
         ws %>% 
           filter(teamID == "SLN" & yearID == 1946) %>%
           arrange(desc(BA))

         # Babe Ruth's WS profile
         ws %>% 
           filter(playerID == "ruthba01") %>%
           arrange(yearID)
