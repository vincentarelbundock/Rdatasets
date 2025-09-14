.. container::

   .. container::

      ============ ===============
      PitchingPost R Documentation
      ============ ===============

      .. rubric:: PitchingPost table
         :name: pitchingpost-table

      .. rubric:: Description
         :name: description

      Post season pitching statistics

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(PitchingPost)

      .. rubric:: Format
         :name: format

      A data frame with 6991 observations on the following 30 variables.

      ``playerID``
         Player ID code

      ``yearID``
         Year

      ``round``
         Level of playoffs

      ``teamID``
         Team; a factor

      ``lgID``
         League; a factor with levels ``AA`` ``AL`` ``NL``

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
         Opponents' batting average

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
         Sacrifice Hits allowed

      ``SF``
         Sacrifice Flies allowed

      ``GIDP``
         Grounded into Double Plays

      .. rubric:: Source
         :name: source

      Lahman, S. (2025) Lahman's Baseball Database, 1871-2024, 2025
      version, https://sabr.org/lahman-database/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library("dplyr")
         library(ggplot2)

         # Restrict data to World Series in modern era
         ws <- PitchingPost %>%
                  filter(yearID >= 1903 & round == "WS")
         # Pitchers with ERA 0.00 in WS play (> 10 IP)
         ws %>%
           filter(IPouts > 30 & ERA == 0.00) %>%
           arrange(desc(IPouts)) %>%
           select(playerID, yearID, teamID, lgID, IPouts, W, L, G, 
                  CG, SHO, H, R, SO, BFP) 

         # Pitchers with the most IP in a series 
         # 1903 Series went eight games - for details, see
         # https://en.wikipedia.org/wiki/1903_World_Series
         ws %>%
           arrange(desc(IPouts)) %>%
           select(playerID, yearID, teamID, lgID, IPouts, W, L, G, 
                  CG, SHO, H, SO, BFP, ERA) %>%
           head(., 10)

         # Pitchers with highest strikeout rate in WS
         # (minimum 20 IP)
         ws %>%
           filter(IPouts >= 60) %>%
           mutate(K_rate = 27 * SO/IPouts) %>%
           arrange(desc(K_rate)) %>%
           select(playerID, yearID, teamID, lgID, IPouts, 
                  H, SO, K_rate) %>%
           head(., 10)
           
         # Pitchers with the most IP in WS history
         ws %>%
           group_by(playerID) %>%
           summarise_at(vars(IPouts, H, ER, CG, BB, SO, W, L), 
                        sum, na.rm = TRUE) %>%
           mutate(ERA = round(27 * ER/IPouts, 2),
                  Kper9 = round(27 * SO/IPouts, 3),
                  WHIP = round(3 * (H + BB)/IPouts, 3)) %>%
           arrange(desc(IPouts)) %>%
           select(-H, -ER) %>%
           head(., 10)

         # Plot of K/9 by year
         ws %>%
           group_by(yearID) %>%
           summarise(Kper9 = 27 * sum(SO)/sum(IPouts)) %>%
           ggplot(., aes(x = yearID, y = Kper9)) +
             geom_point() +
             geom_smooth() +
             labs(x = "Year", y = "K per 9 innings")
