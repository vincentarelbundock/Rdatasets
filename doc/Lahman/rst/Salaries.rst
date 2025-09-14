.. container::

   .. container::

      ======== ===============
      Salaries R Documentation
      ======== ===============

      .. rubric:: Salaries table
         :name: salaries-table

      .. rubric:: Description
         :name: description

      Player salary data.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Salaries)

      .. rubric:: Format
         :name: format

      A data frame with 26428 observations on the following 5 variables.

      ``yearID``
         Year

      ``teamID``
         Team; a factor

      ``lgID``
         League; a factor

      ``playerID``
         Player ID code

      ``salary``
         Salary

      .. rubric:: Details
         :name: details

      There is no real coverage of player's salaries until 1985.

      .. rubric:: Source
         :name: source

      Lahman, S. (2025) Lahman's Baseball Database, 1871-2024, 2025
      version, https://sabr.org/lahman-database/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # what years are included?
         summary(Salaries$yearID)

         # how many players included each year?
         table(Salaries$yearID)

         # Team salary data

         require("dplyr")
         require("ggplot2")

         # Total team salaries by league, team and year
         teamSalaries <- Salaries %>%
                           group_by(lgID, teamID, yearID) %>%
                           summarise(Salary = sum(as.numeric(salary))) %>%
                           group_by(yearID, lgID) %>%
                           arrange(desc(Salary))

         #######################################
         # Highest paid players each year:
         maxSal <- Salaries %>%
                     group_by(yearID) %>%
                     filter(salary == max(salary)) 
         maxPlayers <- bind_rows(lapply(maxSal$playerID, playerInfo)) %>%
                           select(-playerID)
         maxSal <- bind_cols(maxPlayers, maxSal)

         # Plot maximum MLB salary by year (1985-present)           
         ggplot(maxSal, aes(x = yearID, y = salary/1e6)) +
            geom_point() +
            geom_smooth(se = FALSE) +
            labs(x = "Year", y = "Salary (millions)")

         # Plot salary distributions by year for all players
         ggplot(Salaries, aes(x = factor(yearID), y = salary/1e5)) +
            geom_boxplot(fill = "lightblue", outlier.size = 1) +
            labs(x = "Year", y = "Salary ($100,000)") +
            coord_flip()

         # Plot median MLB salary per year
         Salaries %>%
            group_by(yearID) %>%
            summarise(medsal = median(salary)) %>%
            ggplot(., aes(x = yearID, y = medsal/1e6)) +
            geom_point() +
            geom_smooth() +
            labs(x = "Year", y = "Median MLB salary (millions)")

         # add salary to Batting data
         batting <- Batting %>%
                       filter(yearID >= 1985) %>%
                       left_join(select(Salaries, playerID, yearID, teamID, salary), 
                                  by=c("playerID", "yearID", "teamID"))
         str(batting)

         #######################################
         # Average salaries by teams, over years
         #######################################

         # Some franchises are multiply named, so add a new variable
         # 'franchise' to the Salaries data as a lookup table

         franchise <- c(`ANA` = "LAA", `ARI` = "ARI", `ATL` = "ATL", 
                        `BAL` = "BAL", `BOS` = "BOS", `CAL` = "LAA",
                        `CHA` = "CHA", `CHN` = "CHN", `CIN` = "CIN", 
                        `CLE` = "CLE", `COL` = "COL", `DET` = "DET", 
                        `FLO` = "MIA", `HOU` = "HOU", `KCA` = "KCA", 
                        `LAA` = "LAA", `LAN` = "LAN", `MIA` = "MIA", 
                        `MIL` = "MIL", `MIN` = "MIN", `ML4` = "MIL", 
                        `MON` = "WAS", `NYA` = "NYA", `NYM` = "NYN", 
                        `NYN` = "NYN", `OAK` = "OAK", `PHI` = "PHI", 
                        `PIT` = "PIT", `SDN` = "SDN", `SEA` = "SEA",
                        `SFG` = "SFN", `SFN` = "SFN", `SLN` = "SLN", 
                        `TBA` = "TBA", `TEX` = "TEX", `TOR` = "TOR",
                        `WAS` = "WAS")

         Salaries$franchise <- unname(franchise[Salaries$teamID])

         # Average salaries annual salaries by team, in millions USD
         avg_team_salaries <- Salaries %>%
             group_by(yearID, franchise, lgID) %>%
             summarise(salary= mean(salary)/1e6) %>%
             filter(!(franchise == "CLE" & lgID == "NL"))

         # Spaghetti plot of team salary over time by team
         # Yankees have largest average team salary since 2003
         ggplot(avg_team_salaries, 
                aes(x = yearID, y = salary, group = factor(franchise))) +
                geom_path() +
                labs(x = "Year", y = "Average team salary (millions USD)")
