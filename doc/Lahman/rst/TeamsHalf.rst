.. container::

   .. container::

      ========= ===============
      TeamsHalf R Documentation
      ========= ===============

      .. rubric:: TeamsHalf table
         :name: teamshalf-table

      .. rubric:: Description
         :name: description

      Split season data for teams

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(TeamsHalf)

      .. rubric:: Format
         :name: format

      A data frame with 52 observations on the following 10 variables.

      ``yearID``
         Year

      ``lgID``
         League; a factor with levels ``AL`` ``NL``

      ``teamID``
         Team; a factor

      ``Half``
         First or second half of season

      ``divID``
         Division

      ``DivWin``
         Won Division (Y or N)

      ``Rank``
         Team's position in standings for the half

      ``G``
         Games played

      ``W``
         Wins

      ``L``
         Losses

      .. rubric:: Source
         :name: source

      Lahman, S. (2024) Lahman's Baseball Database, 1871-2024, 2025
      version, https://sabr.org/lahman-database/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # 1981 season team data split into half seasons
         data(TeamsHalf)
         library("dplyr")

         # List standings with winning percentages by
         # season half, league and division
         TeamsHalf %>%
            group_by(Half, lgID, divID) %>%
            mutate(WinPct = round(W/G, 3)) %>%
            arrange(Half, lgID, divID, Rank) %>%
            select(Half, lgID, divID, Rank, teamID, WinPct)
