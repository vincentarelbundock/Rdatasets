.. container::

   .. container::

      ==== ===============
      iran R Documentation
      ==== ===============

      .. rubric:: iran
         :name: iran

      .. rubric:: Description
         :name: description

      A data frame containing information about the 2009 Presidential
      Election in Iran. There were widespread claims of election fraud
      in this election both internationally and within Iran.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         iran

      .. rubric:: Format
         :name: format

      A data frame with 366 observations on the following 9 variables.

      province
         Iranian province where votes were cast.

      city
         City within province where votes were cast.

      ahmadinejad
         Number of votes received by Ahmadinejad.

      rezai
         Number of votes received by Rezai.

      karrubi
         Number of votes received by Karrubi.

      mousavi
         Number of votes received by Mousavi.

      total_votes_cast
         Total number of votes cast.

      voided_votes
         Number of votes that were not counted.

      legitimate_votes
         Number of votes that were counted.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)
         library(ggplot2)
         library(tidyr)
         library(stringr)

         plot_data <- iran |>
           summarize(
             ahmadinejad = sum(ahmadinejad) / 1000,
             rezai = sum(rezai) / 1000,
             karrubi = sum(karrubi) / 1000,
             mousavi = sum(mousavi) / 1000
           ) |>
           pivot_longer(
             cols = c(ahmadinejad, rezai, karrubi, mousavi),
             names_to = "candidate",
             values_to = "votes"
           ) |>
           mutate(candidate = str_to_title(candidate))

         ggplot(plot_data, aes(votes, candidate)) +
           geom_col() +
           theme_minimal() +
           labs(
             title = "2009 Iranian Presidential Election",
             x = "Number of votes (in thousands)",
             y = ""
           )
