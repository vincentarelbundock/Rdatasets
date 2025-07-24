.. container::

   .. container::

      ========== ===============
      SeriesPost R Documentation
      ========== ===============

      .. rubric:: SeriesPost table
         :name: seriespost-table

      .. rubric:: Description
         :name: description

      Post season series information

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(SeriesPost)

      .. rubric:: Format
         :name: format

      A data frame with 389 observations on the following 9 variables.

      ``yearID``
         Year

      ``round``
         Level of playoffs

      ``teamIDwinner``
         Team ID of the team that won the series; a factor

      ``lgIDwinner``
         League ID of the team that won the series; a factor with levels
         ``AL`` ``NL``

      ``teamIDloser``
         Team ID of the team that lost the series; a factor

      ``lgIDloser``
         League ID of the team that lost the series; a factor with
         levels ``AL`` ``NL``

      ``wins``
         Wins by team that won the series

      ``losses``
         Losses by team that won the series

      ``ties``
         Tie games

      .. rubric:: Source
         :name: source

      Lahman, S. (2024) Lahman's Baseball Database, 1871-2023, 2024
      version, http://www.seanlahman.com/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(SeriesPost)

         # How many times has each team won the World Series?

         # Notes: 
         # - the SeriesPost table includes an identifier for the 
         # team (teamID), but not the franchise (e.g. the Brooklyn Dodgers
         # [BRO] and Los Angeles Dodgers [LAN] are counted separately)
         #
         # - the World Series was first played in 1903, but the 
         # Lahman data tables have the final round of the earlier 
         # playoffs labelled "WS", so it is necessary to
         # filter the SeriesPost table to exclude years prior to 1903. 

         # using the dplyr data manipulation package
         library("dplyr")
         library("tidyr")
         library("ggplot2")

         ## WS winners, arranged in descending order of titles won
         ws_winner_table <- SeriesPost %>%
           filter(yearID > "1902", round == "WS") %>%
           group_by(teamIDwinner) %>%
           summarise(wincount = n()) %>%
           arrange(desc(wincount))
         ws_winner_table

         ## Expanded form of World Series team data in modern era

         ws <- SeriesPost %>%
                 filter(yearID >= 1903 & round == "WS") %>%
                 select(-ties, -round) %>%
                 mutate(lgIDloser = droplevels(lgIDloser),
                        lgIDwinner = droplevels(lgIDwinner))

         # Bar chart of length of series (# games played)
         # 1903, 1919 and 1921 had eight games
         ggplot(ws, aes(x = wins + losses)) +
           geom_bar(fill = "dodgerblue") +
           labs(x = "Number of games", y = "Frequency")

         # Last year the Cubs appeared in the WS
         ws %>% 
           filter(teamIDwinner == "CHN" | teamIDloser == "CHN") %>% 
           summarise(max(yearID))

         # Dot chart of number of WS appearances by teamID
         ws %>% 
           gather(wl, team, teamIDwinner, teamIDloser) %>%
           count(team) %>%
           arrange(desc(n)) %>%
           ggplot(., aes(x = reorder(team, n), y = n)) +
             theme_bw() +
             geom_point(size = 3, color = "dodgerblue") +
             geom_segment(aes(xend = reorder(team, n), yend = 0), 
                          linetype = "dotted", color = "dodgerblue", 
                          size = 1) +
             labs(x = NULL, y = "Number of WS appearances") +
             scale_y_continuous(expand = c(0, 0), limits = c(0, 42)) +
             coord_flip() +
             theme(axis.text.y = element_text(size = rel(0.8)),
                   axis.ticks.y = element_blank())

         # Initial year of each round of championship series in modern era
         SeriesPost %>% 
             filter(yearID >= 1903) %>%   # modern WS started in 1903
             group_by(round) %>%
             summarise(first_year = min(yearID)) %>%
             arrange(first_year)

         # Ditto, but with more information about each series played
         SeriesPost %>% 
           filter(yearID >= 1903) %>%
           group_by(round) %>%
           arrange(yearID) %>%
           do(head(., 1)) %>%
           select(-lgIDwinner, -lgIDloser) %>%
           arrange(yearID, round)
