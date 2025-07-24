.. container::

   .. container::

      ======== ===============
      Pitching R Documentation
      ======== ===============

      .. rubric:: Pitching table
         :name: pitching-table

      .. rubric:: Description
         :name: description

      Pitching table

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Pitching)

      .. rubric:: Format
         :name: format

      A data frame with 50402 observations on the following 30
      variables.

      ``playerID``
         Player ID code

      ``yearID``
         Year

      ``stint``
         player's stint (order of appearances within a season)

      ``teamID``
         Team; a factor

      ``lgID``
         League; a factor with levels ``AA`` ``AL`` ``FL`` ``NL`` ``PL``
         ``UA``

      ``W``
         Wins

      ``L``
         Losses

      ``G``
         Games

      ``GS``
         Games Started

      ``CG``
         Complete Games

      ``SHO``
         Shutouts

      ``SV``
         Saves

      ``IPouts``
         Outs Pitched (innings pitched x 3)

      ``H``
         Hits

      ``ER``
         Earned Runs

      ``HR``
         Homeruns

      ``BB``
         Walks

      ``SO``
         Strikeouts

      ``BAOpp``
         Opponent's Batting Average

      ``ERA``
         Earned Run Average

      ``IBB``
         Intentional Walks

      ``WP``
         Wild Pitches

      ``HBP``
         Batters Hit By Pitch

      ``BK``
         Balks

      ``BFP``
         Batters faced by Pitcher

      ``GF``
         Games Finished

      ``R``
         Runs Allowed

      ``SH``
         Sacrifices by opposing batters

      ``SF``
         Sacrifice flies by opposing batters

      ``GIDP``
         Grounded into double plays by opposing batter

      .. rubric:: Source
         :name: source

      Lahman, S. (2024) Lahman's Baseball Database, 1871-2023, 2024
      version, http://www.seanlahman.com

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # Pitching data

         require("dplyr")

         ###################################
         # cleanup, and add some other stats
         ###################################

         # Restrict to AL and NL data, 1901+
         # All data re SH, SF and GIDP are missing, so remove
         # Intentional walks (IBB) not recorded until 1955
         pitching <- Pitching %>%
                        filter(yearID >= 1901 & lgID %in% c("AL", "NL")) %>%
                        select(-(28:30)) %>%  # remove SH, SF, GIDP
                        mutate(BAOpp = round(H/(H + IPouts), 3),  # loose def'n
                               WHIP = round((H + BB) * 3/IPouts, 2),
                               KperBB = round(ifelse(yearID >= 1955, 
                                                     SO/(BB - IBB), SO/BB), 2))
                                                     

         #####################
         # some simple queries
         #####################

         # Team pitching statistics, Toronto Blue Jays, 1993
         tor93 <- pitching %>%
                    filter(yearID == 1993 & teamID == "TOR") %>%
                    arrange(ERA)

         # Career pitching statistics, Greg Maddux
         subset(pitching, playerID == "maddugr01")

         # Best ERAs for starting pitchers post WWII
         pitching %>% 
             filter(yearID >= 1946 & IPouts >= 600) %>%
             group_by(lgID) %>%
             arrange(ERA) %>%
             do(head(., 5))


         # Best K/BB ratios post-1955 among starters (excludes intentional walks)
         pitching %>% 
             filter(yearID >= 1955 & IPouts >= 600) %>%
             mutate(KperBB = SO/(BB - IBB)) %>%
             arrange(desc(KperBB)) %>%
             head(., 10)
             
         # Best K/BB ratios among relievers post-1950 (min. 20 saves)
         pitching %>% 
             filter(yearID >= 1950 & SV >= 20) %>%
             arrange(desc(KperBB)) %>%
             head(., 10)

         ###############################################
         # Winningest pitchers in each league each year:
         ###############################################

         # Add name & throws information:
         peopleInfo <- People %>%
                         select(playerID, nameLast, nameFirst, throws)
                         
         # Merge peopleInfo into the pitching data
         pitching1 <- right_join(peopleInfo, pitching, by = "playerID")

         # Extract the pitcher with the maximum number of wins 
         # each year, by league
         winp <- pitching1 %>%
                  group_by(yearID, lgID) %>%
                  filter(W == max(W)) %>% 
                  select(nameLast, nameFirst, teamID, W, throws)

         # A simple ANCOVA model of wins vs. year, league and hand (L/R)
         anova(lm(formula = W ~ yearID + I(yearID^2) + lgID + throws, data = winp))

         # Nature of managing pitching staffs has altered importance of
         # wins over time
         ## Not run: 
         require("ggplot2") 

         # compare loess smooth with quadratic fit
         ggplot(winp, aes(x = yearID, y = W)) +
             geom_point(aes(colour = throws, shape=lgID), size = 2) +
             geom_smooth(method="loess", size=1.5, color="blue") +
             geom_smooth(method = "lm", se=FALSE, color="black", 
                          formula = y ~ poly(x,2)) +
             ylab("League maximum Wins") + xlab("Year") +
             ggtitle("Maximum pitcher wins by year")
             
         ## To reinforce this, plot the mean IPouts by year and league,
         ## which gives some idea of pitcher usage. Restrict pitcher
         ## pool to those who pitched at least 100 innings in a year.

         pitching %>% filter(IPouts >= 300) %>%  # >= 100 IP

         ggplot(., aes(x = yearID, y = IPouts, color = lgID)) +
           geom_smooth(method="loess") +
           labs(x = "Year", y = "IPouts")

         ## Another indicator: total number of complete games pitched
         ## (Mirrors the trend from the preceding plot.)
         pitching %>% 
            group_by(yearID, lgID) %>%
            summarise(totalCG = sum(CG, na.rm = TRUE)) %>%
            ggplot(., aes(x = yearID, y = totalCG, color = lgID)) +
               geom_point() +
               geom_path() +
               labs(x = "Year", y = "Number of complete games")

         ## End(Not run)
