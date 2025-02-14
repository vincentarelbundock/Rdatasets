.. container::

   .. container::

      ====== ===============
      drinks R Documentation
      ====== ===============

      .. rubric:: Dear Mona Followup: Where Do People Drink The Most
         Beer, Wine And Spirits?
         :name: dear-mona-followup-where-do-people-drink-the-most-beer-wine-and-spirits

      .. rubric:: Description
         :name: description

      The raw data behind the story "Dear Mona Followup: Where Do People
      Drink The Most Beer, Wine And Spirits?"
      https://fivethirtyeight.com/features/dear-mona-followup-where-do-people-drink-the-most-beer-wine-and-spirits/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         drinks

      .. rubric:: Format
         :name: format

      A data frame with 193 rows representing countries and 5 variables:

      country
         country

      beer_servings
         Servings of beer in average serving sizes per person

      spirit_servings
         Servings of spirits in average serving sizes per person

      wine_servings
         Servings of wine in average serving sizes per person

      total_litres_of_pure_alcohol
         Total litres of pure alcohol per person

      .. rubric:: Source
         :name: source

      World Health Organization, Global Information System on Alcohol
      and Health (GISAH), 2010.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # To convert data frame to tidy data (long) format, run:
         library(dplyr)
         library(tidyr)
         library(stringr)
         drinks_tidy <- drinks %>%
           pivot_longer(cols = ends_with("servings"), names_to = "type", values_to = "servings") %>%
           mutate(
             type = str_sub(type, start=1, end=-10)
           ) %>%
           arrange(country, type)
