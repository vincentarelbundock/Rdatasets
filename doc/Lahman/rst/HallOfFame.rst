.. container::

   .. container::

      ========== ===============
      HallOfFame R Documentation
      ========== ===============

      .. rubric:: Hall of Fame Voting Data
         :name: hall-of-fame-voting-data

      .. rubric:: Description
         :name: description

      Hall of Fame table. This is composed of the voting results for all
      candidates nominated for the Baseball Hall of Fame.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(HallOfFame)

      .. rubric:: Format
         :name: format

      A data frame with 6418 observations on the following 9 variables.

      ``playerID``
         Player ID code

      ``yearID``
         Year of ballot

      ``votedBy``
         Method by which player was voted upon. See Details

      ``ballots``
         Total ballots cast in that year

      ``needed``
         Number of votes needed for selection in that year

      ``votes``
         Total votes received

      ``inducted``
         Whether player was inducted by that vote or not (Y or N)

      ``category``
         Category of candidate; a factor with levels ``Manager``
         ``Pioneer/Executive`` ``Player`` ``Umpire``

      ``needed_note``
         Explanation of qualifiers for special elections

      .. rubric:: Details
         :name: details

      This table links to the ``People`` table via the ``playerID``.

      ``votedBy``: Most Hall of Fame inductees have been elected by the
      Baseball Writers Association of America (``BBWAA``). Rules for
      election are described in
      https://en.wikipedia.org/wiki/National_Baseball_Hall_of_Fame_and_Museum#Selection_process.

      .. rubric:: Source
         :name: source

      Lahman, S. (2025) Lahman's Baseball Database, 1871-2024, 2025
      version, https://sabr.org/lahman-database/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Some examples for  Hall of Fame induction data

         require("dplyr")
         require("ggplot2")

         ############################################################
         ## Some simple queries

         # What are the different types of HOF voters?
         table(HallOfFame$votedBy)

         # What was the first year of Hall of Fame elections?
         sort(unique(HallOfFame$yearID))[1]
         # Who comprised the original class?
         subset(HallOfFame, yearID == 1936 & inducted == "Y")

         # Result of a player's last year on the BBWAA ballot
         # Restrict to players voted by BBWAA:
         HOFplayers <- subset(HallOfFame, 
                          votedBy == "BBWAA" & category == "Player")


         # Number of years as HOF candidate, last pct vote, etc.
         # for a given player
         playerOutcomes <- HallOfFame %>%
             filter(votedBy == "BBWAA" & category == "Player") %>%
             group_by(playerID) %>%
             mutate(nyears = length(ballots)) %>%
             arrange(yearID) %>%
             do(tail(., 1)) %>%
             mutate(lastPct = 100 * round(votes/ballots, 3)) %>%
             select(playerID, nyears, inducted, lastPct, yearID) %>%
             rename(lastYear = yearID)


         ############################################################
         # How many voting years until election?
         inducted <- subset(playerOutcomes, inducted == "Y")
         table(inducted$nyears)

         # Bar chart of years to induction for inductees
         barplot(table(inducted$nyears), 
                 main="Number of voting years until election",
                     ylab="Number of players", xlab="Years")
         box()

         # What is the form of this distribution?
         require("vcd")
         goodfit(inducted$nyears)
         plot(goodfit(inducted$nyears), xlab="Number of years",
             main="Poissonness plot of number of years voting until election")
         Ord_plot(table(inducted$nyears), xlab="Number of years")



         # First ballot inductees sorted by vote percentage:
         playerOutcomes %>%
           filter(nyears == 1L & inducted == "Y") %>%
           arrange(desc(lastPct))

         # Who took at least ten years on the ballot before induction?
         playerOutcomes %>%
           filter(nyears >= 10L & inducted == "Y")

         ############################################################
         ## Plots of voting percentages over time for the borderline
         ## HOF candidates, according to the BBWAA:

         # Identify players on the BBWAA ballot for at least 10 years
         # Returns a character vector of playerIDs
         longTimers <- as.character(unlist(subset(playerOutcomes,
                                                  nyears >= 10, select = "playerID")))

         # Extract their information from the HallOfFame data
         HOFlt <- HallOfFame %>% 
             filter(playerID %in% longTimers & votedBy == "BBWAA") %>%
             group_by(playerID) %>%
             mutate(elected = ifelse(any(inducted == "Y"), 
                                       "Elected", "Not elected"),
                    pct = 100 * round(votes/ballots, 3))

         # Plot the voting profiles:
         ggplot(HOFlt, aes(x = yearID, y = pct,
                           group = playerID)) +
             ggtitle("Profiles of BBWAA voting percentage, long-time HOF candidates") +
             geom_line() +
             geom_hline(yintercept = 75, colour = 'red') +
             labs(x = "Year", y = "Percentage of votes") +
             facet_wrap(~ elected, ncol = 1)
             
         ## Eventual inductees tend to have increasing support over time.
         ## Fit simple linear regression models to each player's voting
         ## percentage profile and extract the slopes. Then compare the
         ## distributions of the slopes in each group.

         # data frame for playerID and induction status among
         # long term candidates
         HOFstatus <- HOFlt %>% 
                        group_by(playerID) %>%
                        select(playerID, elected, inducted) %>%
                        do(tail(., 1))

         # data frame of regression slopes, which represent average
         # increase in percentage support by BBWAA members over a
         # player's candidacy.
         HOFslope <- HOFlt %>%
                       group_by(playerID) %>%
                       do(mod = lm(pct ~ yearID, data = .)) %>%
                       do(data.frame(slope = coef(.$mod)[2]))

         ## Boxplots of regression slopes by induction group
         ggplot(data.frame(HOFstatus, HOFslope), 
                aes(x = elected, y = slope)) +
             geom_boxplot(width = 0.5) +
             geom_point(position = position_jitter(width = 0.2))

         # Note 1: Only two players whose maximum voting percentage
         # was over 60% were not eventually inducted
         # into the HOF: Gil Hodges and Jack Morris. 
         # Red Ruffing was elected in a 1967 runoff election while
         # the others have been voted in by the Veterans Committee. 

         # Note 2: Of the players whose slope was >= 2.5 among 
         # non-inductees, only Jack Morris has not (yet) been 
         # subsequently inducted into the HOF; however, his last year of
         # eligibility was 2014 so he could be inducted by a future
         # Veterans Committee.
