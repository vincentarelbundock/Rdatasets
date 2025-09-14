.. container::

   .. container::

      =============== ===============
      TeamsFranchises R Documentation
      =============== ===============

      .. rubric:: TeamFranchises table
         :name: teamfranchises-table

      .. rubric:: Description
         :name: description

      Information about team franchises

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(TeamsFranchises)

      .. rubric:: Format
         :name: format

      A data frame with 120 observations on the following 4 variables.

      ``franchID``
         Franchise ID; a factor

      ``franchName``
         Franchise name

      ``active``
         Whether team is currently active (Y or N)

      ``NAassoc``
         ID of National Association team franchise played as

      .. rubric:: Source
         :name: source

      Lahman, S. (2024) Lahman's Baseball Database, 1871-2024, 2025
      version, https://sabr.org/lahman-database/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(TeamsFranchises)

         # Which of the active Major League Baseball teams had a National Association predecessor?

         # Notes: 
         # - the National Association was founded in 1871, and continued through the
         # 1875 season. In 1876, six clubs from the National Association and two other
         # independent clubs formed the National League, which exists to this day.
         # - the `active` field has "NA" for the National Association franchises
         # - where appropriate, the `NAassoc` field has the `franchID` of the successor National League team

         # using the dplyr data manipulation package
         library("dplyr")

         NatAssoc_active_table <- TeamsFranchises %>%
           filter(active == "Y") %>%
           filter(!is.na(NAassoc))
         NatAssoc_active_table

         # Merge current team IDs with franchise IDs
         currentTeams <- Teams %>% 
                           filter(yearID == 2014) %>%
                           select(teamID, franchID, lgID, park)

         # Merge TeamsFranchises with currentTeams
         TeamsFranchises %>%
             filter(active == "Y") %>%
             select(-active, -NAassoc) %>%
             left_join(currentTeams, by = "franchID")
