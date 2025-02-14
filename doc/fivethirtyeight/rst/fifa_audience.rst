.. container::

   .. container::

      ============= ===============
      fifa_audience R Documentation
      ============= ===============

      .. rubric:: How To Break FIFA
         :name: how-to-break-fifa

      .. rubric:: Description
         :name: description

      The raw data behind the story "How To Break FIFA"
      https://fivethirtyeight.com/features/how-to-break-fifa/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         fifa_audience

      .. rubric:: Format
         :name: format

      A data frame with 3652 rows representing guests and 6 variables:

      country
         FIFA member country

      confederation
         Confederation to which country belongs

      population_share
         Country's share of global population (percentage)

      tv_audience_share
         Country's share of global world cup TV Audience (percentage)

      gdp_weighted_share
         Country's GDP-weighted audience share (percentage)

      .. rubric:: Source
         :name: source

      See https://github.com/fivethirtyeight/data/tree/master/fifa

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # To convert data frame to tidy data (long) format, run:
         library(dplyr)
         library(tidyr)
         library(stringr)
         fifa_audience_tidy <- fifa_audience %>%
           pivot_longer(-c(country, confederation), 
              names_to = "type", values_to = "share") %>%
           mutate(type = str_sub(type, start=1, end=-7)) %>%
           arrange(country)
