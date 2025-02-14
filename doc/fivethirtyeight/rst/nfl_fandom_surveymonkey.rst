.. container::

   .. container::

      ======================= ===============
      nfl_fandom_surveymonkey R Documentation
      ======================= ===============

      .. rubric:: How Every NFL Team’s Fans Lean Politically
         :name: how-every-nfl-teams-fans-lean-politically

      .. rubric:: Description
         :name: description

      The raw data behind the story "How Every NFL Team’s Fans Lean
      Politically"
      https://fivethirtyeight.com/features/how-every-nfl-teams-fans-lean-politically/:
      SurveyMonkey Data.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         nfl_fandom_surveymonkey

      .. rubric:: Format
         :name: format

      a data frame with 33 rows representing teams and 25 variables:

      team
         NFL team

      total_respondents
         Total number of poll respondents who ranked the given team in
         their top 3 favorites

      asian_dem
         Number of Asian, democrat poll respondents who ranked the given
         team in their top 3 favorites

      black_dem
         Number of Black, democrat poll respondents who ranked the given
         team in their top 3 favorites

      hispanic_dem
         Number of Hispanic, democrat poll respondents who ranked the
         given team in their top 3 favorites

      other_dem
         Number of democrat poll respondents who identified their race
         as "other" (not Asian, Black, Hispanic, or White) and ranked
         the given team in their top 3 favorites

      white_dem
         Number of White, democrat poll respondents who ranked the given
         team in their top 3 favorites

      total_dem
         Total number of democrat poll respondents who ranked the given
         team in their top 3 favorites

      asian_ind
         Number of Asian, independent poll respondents who ranked the
         given team in their top 3 favorites

      black_ind
         Number of Black, independent poll respondents who ranked the
         given team in their top 3 favorites

      hispanic_ind
         Number of Hispanic, independent poll respondents who ranked the
         given team in their top 3 favorites

      other_ind
         Number of independent poll respondents who identified their
         race as "other" (not Asian, Black, Hispanic, or White) and
         ranked the given team in their top 3 favorites

      white_ind
         Number of White, independent poll respondents who ranked the
         given team in their top 3 favorites

      total_ind
         Total number of independent poll respondents who ranked the
         given team in their top 3 favorites

      asian_gop
         Number of Asian, republican poll respondents who ranked the
         given team in their top 3 favorites

      black_gop
         Number of Black, republican poll respondents who ranked the
         given team in their top 3 favorites

      hispanic_gop
         Number of Hispanic, republican poll respondents who ranked the
         given team in their top 3 favorites

      other_gop
         Number of republican poll respondents who identified their race
         as "other" (not Asian, Black, Hispanic, or White) and ranked
         the given team in their top 3 favorites

      white_gop
         Number of White, republican poll respondents who ranked the
         given team in their top 3 favorites

      total_gop
         Total number of republican poll respondents who ranked the
         given team in their top 3 favorites

      gop_percent
         Percent of fans (who ranked the team in their top 3 favorite
         NFL teams) who are republicans

      dem_percent
         Percent of fans who are democrats

      ind_percent
         Percent of fans who are independent

      white_percent
         Percent of fans who are White

      nonwhite_percent
         Percent of fans who are not White

      .. rubric:: Source
         :name: source

      See
      https://github.com/fivethirtyeight/data/blob/master/nfl-fandom/NFL_fandom_data-surveymonkey.csv

      .. rubric:: See Also
         :name: see-also

      ``nfl_fandom_google``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # To convert data frame to tidy data (long) format, run:
         library(dplyr)
         library(tidyr)
         nfl_fandom_surveymonkey_tidy <- nfl_fandom_surveymonkey %>%
           pivot_longer(-c("team", "total_respondents", "gop_percent", "dem_percent",
                     "ind_percent", "white_percent", "nonwhite_percent"),
                     names_to = "race_party", values_to = "percent") %>%
           arrange(team)
