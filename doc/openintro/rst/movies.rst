.. container::

   .. container::

      ====== ===============
      movies R Documentation
      ====== ===============

      .. rubric:: movies
         :name: movies

      .. rubric:: Description
         :name: description

      A dataset with information about movies released in 2003.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         movies

      .. rubric:: Format
         :name: format

      A data frame with 140 observations on the following 5 variables.

      movie
         Title of the movie.

      genre
         Genre of the movie.

      score
         Critics score of the movie on a 0 to 100 scale.

      rating
         MPAA rating of the film.

      box_office
         Millions of dollars earned at the box office in the US and
         Canada.

      .. rubric:: Source
         :name: source

      `Investigating Statistical Concepts, Applications and
      Methods <http://www.rossmanchance.com/iscam2/data/movies03.txt>`__

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(ggplot2)

         ggplot(movies, aes(score, box_office, color = genre)) +
           geom_point() +
           theme_minimal() +
           labs(
             title = "Does a critic score predict box office earnings?",
             x = "Critic rating",
             y = "Box office earnings (millions US$",
             color = "Genre"
           )
