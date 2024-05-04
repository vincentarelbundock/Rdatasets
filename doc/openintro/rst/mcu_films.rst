.. container::

   .. container::

      ========= ===============
      mcu_films R Documentation
      ========= ===============

      .. rubric:: Marvel Cinematic Universe films
         :name: marvel-cinematic-universe-films

      .. rubric:: Description
         :name: description

      A list of Marvel Cinematic Universe films through the Infinity
      saga. The Infinity saga is a 23 movie storyline spanning from
      Ironman in 2008 to Endgame in 2019.

      .. rubric:: Usage
         :name: usage

      ::

         mcu_films

      .. rubric:: Format
         :name: format

      A data frame with 23 rows and 7 variables.

      movie
         Title of the movie.

      length_hrs
         Length of the movie: hours portion.

      length_min
         Length of the movie: minutes portion.

      release_date
         Date the movie was released in the US.

      opening_weekend_us
         Box office totals for opening weekend in the US.

      gross_us
         All box office totals in US.

      gross_world
         All box office totals world wide.

      .. rubric:: Details
         :name: details

      Box office figures are not adjusted to a specific year. They are
      from the year the film was released.

      .. rubric:: Source
         :name: source

      `Internet Movie Database <https://www.imdb.com/>`__.

      .. rubric:: Examples
         :name: examples

      ::

         library(ggplot2)
         library(scales)

         ggplot(mcu_films, aes(x = opening_weekend_us, y = gross_us)) +
           geom_point() +
           labs(
             title = "MCU Box Office Totals: Opening weekend vs. all-time",
             x = "Opening weekend totals (USD in millions)",
             y = "All-time totals (USD)"
           ) +
           scale_x_continuous(labels = label_dollar(scale = 1 / 1000000)) +
           scale_y_continuous(labels = label_dollar(scale = 1 / 1000000))
