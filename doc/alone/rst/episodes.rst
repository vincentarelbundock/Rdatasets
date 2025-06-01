.. container::

   .. container::

      ======== ===============
      episodes R Documentation
      ======== ===============

      .. rubric:: Episodes
         :name: episodes

      .. rubric:: Description
         :name: description

      Contains details of each episode including the title, number of
      viewers, beginning quote and IMDb rating

      .. rubric:: Usage
         :name: usage

      .. code:: R

         episodes

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      ``version``
         Country code for the version of the show

      ``season``
         The season number

      ``episode_number_overall``
         Episode number across seasons

      ``episode``
         Episode number

      ``title``
         Episode title

      ``day_start``
         The day the episode started on

      ``n_remaining``
         How are remaining at the start of the episode

      ``air_date``
         Date the episode originally aired

      ``viewers``
         Number of viewers in the US (millions)

      ``quote``
         The beginning quote

      ``author``
         Author of the beginning quote

      ``imdb_rating``
         IMDb rating of the episode

      ``n_ratings``
         Number of ratings given for the episode

      ``description``
         Description of the episode from IMDb

      .. rubric:: Source
         :name: source

      https://en.wikipedia.org/wiki/List_of_Alone_episodes#Season_1_(2015)_-_Vancouver_Island

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)
         library(ggplot2)

         episodes |>
           ggplot(aes(episode_number_overall, viewers, colour = as.factor(season))) +
           geom_line()
