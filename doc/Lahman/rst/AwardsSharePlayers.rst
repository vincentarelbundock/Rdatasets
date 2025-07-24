.. container::

   .. container::

      ================== ===============
      AwardsSharePlayers R Documentation
      ================== ===============

      .. rubric:: AwardsSharePlayers table
         :name: awardsshareplayers-table

      .. rubric:: Description
         :name: description

      Award voting for managers awards

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(AwardsSharePlayers)

      .. rubric:: Format
         :name: format

      A data frame with 7447 observations on the following 7 variables.

      ``awardID``
         name of award votes were received for

      ``yearID``
         Year

      ``lgID``
         League; a factor with levels ``AL`` ``ML`` ``NL``

      ``playerID``
         Player ID code

      ``pointsWon``
         Number of points received

      ``pointsMax``
         Maximum number of points possible

      ``votesFirst``
         Number of first place votes

      .. rubric:: Source
         :name: source

      Lahman, S. (2024) Lahman's Baseball Database, 1871-2023, 2023
      version, http://www.seanlahman.com/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # Vote tallies for post-season player awards

         require("dplyr")

         # Which awards are represented in this data frame?
         unique(AwardsSharePlayers$awardID)

         # Sort the votes for the Cy Young award in decreasing order.
         # Until 1967, the award went to the best pitcher
         # in both leagues.

         cyvotes <- AwardsSharePlayers %>%
                       filter(awardID == "Cy Young") %>%
                       group_by(yearID, lgID) %>%
                       arrange(desc(pointsWon))

         # 2012 votes
         subset(cyvotes, yearID == 2012)

         # top three votegetters each year by league

         cya_top3 <- cyvotes %>%
                       group_by(yearID, lgID) %>%
                       do(head(., 3))
         head(cya_top3, 12)

         # unanimous Cy Young winners
         subset(cyvotes, pointsWon == pointsMax)

         ## CYA was a major league award until 1967
         # Find top five pitchers with most top 3 vote tallies in CYA
         # head(with(cya_top3, rev(sort(table(playerID)))), 5)

         # Pre-1967
         cya_top3 %>% 
           filter(yearID <= 1966) %>%
           group_by(playerID) %>%
           summarise(yrs_top3 = n()) %>%
           arrange(desc(yrs_top3)) %>%
           head(., 2)

         # 1967+ (both leagues)
         cya_top3 %>% 
           filter(yearID > 1966) %>%
           group_by(playerID) %>%
           summarise(yrs_top3 = n()) %>%
           arrange(desc(yrs_top3)) %>%
           head(., 5)

         # 1967+ (by league)
         cya_top3 %>% 
           filter(yearID > 1966) %>%
           group_by(playerID, lgID) %>%
           summarise(yrs_top3 = n()) %>%
           arrange(desc(yrs_top3)) %>%
           head(., 5)

         # Ditto for MVP awards
         # Top 3 votegetters for MVP award by year and league
         MVP_top3 <- AwardsSharePlayers %>% 
                       filter(awardID == "MVP") %>%
                       group_by(yearID, lgID) %>% 
                       arrange(desc(pointsWon)) %>%
                       do(head(., 3))
         tail(MVP_top3)

         ## Select players with >= 7 top 3 finishes
         MVP_top3 %>% 
           group_by(playerID) %>%
           summarise(n_top3 = n()) %>%
           arrange(desc(n_top3)) %>%
           filter(n_top3 > 6)
