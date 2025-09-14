.. container::

   .. container::

      ======== ===============
      Fielding R Documentation
      ======== ===============

      .. rubric:: Fielding table
         :name: fielding-table

      .. rubric:: Description
         :name: description

      Fielding table

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Fielding)

      .. rubric:: Format
         :name: format

      A data frame with 153656 observations on the following 18
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

      ``POS``
         Position

      ``G``
         Games

      ``GS``
         Games Started

      ``InnOuts``
         Time played in the field expressed as outs

      ``PO``
         Putouts

      ``A``
         Assists

      ``E``
         Errors

      ``DP``
         Double Plays

      ``PB``
         Passed Balls (by catchers)

      ``WP``
         Wild Pitches (by catchers)

      ``SB``
         Opponent Stolen Bases (by catchers)

      ``CS``
         Opponents Caught Stealing (by catchers)

      ``ZR``
         Zone Rating

      .. rubric:: Source
         :name: source

      Lahman, S. (2025) Lahman's Baseball Database, 1871-2024, 2025
      version, https://sabr.org/lahman-database/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Fielding)
         # Basic fielding data

         require("dplyr")


         # Roberto Clemente's fielding profile
         # pitching and catching related data removed
         # subset(Fielding, playerID == "clemero01")[, 1:13]
         Fielding %>% 
            filter(playerID == "clemero01") %>%
            select(1:13)
            
         # Yadier Molina's fielding profile
         # PB, WP, SP and CS apply to catchers
         Fielding %>% 
           subset(playerID == "molinya01") %>%
           select(-WP, -ZR)

         # Pedro Martinez's fielding profile
         Fielding %>% subset(playerID == "martipe02")

         # Table of games played by Pete Rose at different positions
         with(subset(Fielding, playerID == "rosepe01"), xtabs(G ~ POS))

         # Career total G/PO/A/E/DP for Luis Aparicio
         Fielding %>%
             filter(playerID == "aparilu01") %>% 
             select(G, PO, A, E, DP) %>%
             summarise_each(funs(sum))


         # Top ten 2B/SS in turning DPs
         Fielding %>%
             subset(POS %in% c("2B", "SS")) %>%
             group_by(playerID) %>%
             summarise(TDP = sum(DP, na.rm = TRUE)) %>%
             arrange(desc(TDP)) %>%
             head(., 10)

         # League average fielding statistics, 1961-present
         Fielding %>% 
            filter(yearID >= 1961 & POS != "DH") %>%
            select(yearID, lgID, POS, InnOuts, PO, A, E) %>%
            group_by(yearID, lgID) %>%
            summarise_at(vars(InnOuts, PO, A, E), funs(sum), na.rm = TRUE) %>%
            mutate(fpct = round( (PO + A)/(PO + A + E), 3), 
                   OPE = round(InnOuts/E, 3))
