.. container::

   .. container::

      ===== ===============
      Teams R Documentation
      ===== ===============

      .. rubric:: Teams table
         :name: teams-table

      .. rubric:: Description
         :name: description

      Yearly statistics and standings for teams

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Teams)

      .. rubric:: Format
         :name: format

      A data frame with 3075 observations on the following 48 variables.

      ``yearID``
         Year

      ``lgID``
         League; a factor with levels ``AA`` ``AL`` ``FL`` ``NL`` ``PL``
         ``UA``

      ``teamID``
         Team; a factor

      ``franchID``
         Franchise (links to ``TeamsFranchises`` table)

      ``divID``
         Team's division; a factor with levels ``C`` ``E`` ``W``

      ``Rank``
         Position in final standings

      ``G``
         Games played

      ``Ghome``
         Games played at home

      ``W``
         Wins

      ``L``
         Losses

      ``DivWin``
         Division Winner (Y or N)

      ``WCWin``
         Wild Card Winner (Y or N)

      ``LgWin``
         League Champion(Y or N)

      ``WSWin``
         World Series Winner (Y or N)

      ``R``
         Runs scored

      ``AB``
         At bats

      ``H``
         Hits by batters

      ``X2B``
         Doubles

      ``X3B``
         Triples

      ``HR``
         Homeruns by batters

      ``BB``
         Walks by batters

      ``SO``
         Strikeouts by batters

      ``SB``
         Stolen bases

      ``CS``
         Caught stealing

      ``HBP``
         Batters hit by pitch

      ``SF``
         Sacrifice flies

      ``RA``
         Opponents runs scored

      ``ER``
         Earned runs allowed

      ``ERA``
         Earned run average

      ``CG``
         Complete games

      ``SHO``
         Shutouts

      ``SV``
         Saves

      ``IPouts``
         Outs Pitched (innings pitched x 3)

      ``HA``
         Hits allowed

      ``HRA``
         Homeruns allowed

      ``BBA``
         Walks allowed

      ``SOA``
         Strikeouts by pitchers

      ``E``
         Errors

      ``DP``
         Double Plays

      ``FP``
         Fielding percentage

      ``name``
         Team's full name

      ``park``
         Name of team's home ballpark

      ``attendance``
         Home attendance total

      ``BPF``
         Three-year park factor for batters

      ``PPF``
         Three-year park factor for pitchers

      ``teamIDBR``
         Team ID used by Baseball Reference website

      ``teamIDlahman45``
         Team ID used in Lahman database version 4.5

      ``teamIDretro``
         Team ID used by Retrosheet

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

         data(Teams)
         library("dplyr")
         library("tidyr")

         # Add some selected measures to the Teams data frame
         # Restrict to AL and NL in modern era
         teams <- Teams %>% 
           filter(yearID >= 1901 & lgID %in% c("AL", "NL")) %>%
           group_by(yearID, teamID) %>%
           mutate(TB = H + X2B + 2 * X3B + 3 * HR,
                  WinPct = W/G,
                  rpg = R/G,
                  hrpg = HR/G,
                  tbpg = TB/G,
                  kpg = SO/G,
                  k2bb = SO/BB,
                  whip = 3 * (H + BB)/IPouts)

         # Function to create a ggplot by year for selected team stats
         # Both arguments are character strings
         yrPlot <- function(yvar, label)
         {
             require("ggplot2")
             ggplot(teams, aes_string(x = "yearID", y = yvar)) +
                geom_point(size = 0.5) +
                geom_smooth(method="loess") +
                labs(x = "Year", y = paste(label, "per game"))
         }

         ## Run scoring in the modern era by year
         yrPlot("rpg", "Runs")

         ## Home runs per game by year
         yrPlot("hrpg", "Home runs")

         ## Total bases per game by year
         yrPlot("tbpg", "Total bases")

         ## Strikeouts per game by year
         yrPlot("kpg", "Strikeouts")

         ## Plot win percentage vs. run differential (R - RA)
         ggplot(teams, aes(x = R - RA, y = WinPct)) +
            geom_point(size = 0.5) +
            geom_smooth(method="loess") + 
            geom_hline(yintercept = 0.5, color = "orange") +
            geom_vline(xintercept = 0, color = "orange") +
            labs(x = "Run differential", y = "Win percentage")

         ## Plot attendance vs. win percentage by league, post-1980
         teams %>%  filter(yearID >= 1980) %>%
         ggplot(., aes(x = WinPct, y = attendance/1000)) +
            geom_point(size = 0.5) +
            geom_smooth(method="loess", se = FALSE) +
            facet_wrap(~ lgID) +
            labs(x = "Win percentage", y = "Attendance (1000s)")

         ## Teams with over 4 million attendance in a season
         teams %>% 
           filter(attendance >= 4e6) %>%
           select(yearID, lgID, teamID, Rank, attendance) %>%
           arrange(desc(attendance))

         ## Average season HRs by park, post-1980
         teams %>% 
            filter(yearID >= 1980) %>%
            group_by(park) %>%
              summarise(meanHRpg = mean((HR + HRA)/Ghome), nyears = n()) %>%
              filter(nyears >= 10) %>%
              arrange(desc(meanHRpg)) %>%
              head(., 10)

         ## Home runs per game at Fenway Park and Wrigley Field,
         ## the two oldest MLB parks, by year. Fenway opened in 1912.
         teams %>% 
           filter(yearID >= 1912 & teamID %in% c("BOS", "CHN")) %>%
           mutate(hrpg = (HR + HRA)/Ghome) %>%
           ggplot(., aes(x = yearID, y = hrpg, color = teamID)) +
             geom_line(size = 1) +
             geom_point() +
             labs(x = "Year", y = "Home runs per game", color = "Team") +
             scale_color_manual(values = c("red", "blue"))

         ## Ditto for total strikeouts per game
         teams %>% 
           filter(yearID >= 1912 & teamID %in% c("BOS", "CHN")) %>%
           mutate(kpg = (SO + SOA)/Ghome) %>%
           ggplot(., aes(x = yearID, y = kpg, color = teamID)) +
           geom_line(size = 1) +
           geom_point() +
           labs(x = "Year", y = "Strikeouts per game", color = "Team") +
           scale_color_manual(values = c("red", "blue"))  


         ## Not run: 
         if(require(googleVis)) {
         motion1 <- gvisMotionChart(as.data.frame(teams), 
                      idvar="teamID", timevar="yearID", chartid="gvisTeams",
                        options=list(width=700, height=600))
         plot(motion1)
         #print(motion1, file="gvisTeams.html")

         # Merge with avg salary for years where salary is available

         teamsal <- Salaries %>%
                         group_by(yearID, teamID) %>%
                         summarise(Salary = sum(salary, na.rm = TRUE)) %>%
                         select(yearID, teamID, Salary)

         teamsSal <- teams %>%
                         filter(yearID >= 1985) %>%
                         left_join(teamsal, by = c("yearID", "teamID")) %>%
                         select(yearID, teamID, attendance, Salary, WinPct) %>%
                         as.data.frame(.)

         motion2 <- gvisMotionChart(teamsSal, idvar="teamID", timevar="yearID",
           xvar="attendance", yvar="salary", sizevar="WinPct",
             chartid="gvisTeamsSal", options=list(width=700, height=600))
         plot(motion2)
         #print(motion2, file="gvisTeamsSal.html")

         }

         ## End(Not run)
