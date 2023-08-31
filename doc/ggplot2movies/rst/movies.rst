.. container::

   ====== ===============
   movies R Documentation
   ====== ===============

   .. rubric:: Movie information and user ratings from IMDB.com.
      :name: movies

   .. rubric:: Description
      :name: description

   The internet movie database, http://imdb.com/, is a website devoted
   to collecting movie data supplied by studios and fans. It claims to
   be the biggest movie database on the web and is run by amazon. More
   about information imdb.com can be found online,
   http://imdb.com/help/show_leaf?about, including information about the
   data collection process, http://imdb.com/help/show_leaf?infosource.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      movies

   .. rubric:: Format
      :name: format

   A data frame with 28819 rows and 24 variables

   -  title. Title of the movie.

   -  year. Year of release.

   -  budget. Total budget (if known) in US dollars

   -  length. Length in minutes.

   -  rating. Average IMDB user rating.

   -  votes. Number of IMDB users who rated this movie.

   -  r1-10. Multiplying by ten gives percentile (to nearest 10%) of
      users who rated this movie a 1.

   -  mpaa. MPAA rating.

   -  action, animation, comedy, drama, documentary, romance, short.
      Binary variables representing if movie was classified as belonging
      to that genre.

   .. rubric:: Details
      :name: details

   Movies were selected for inclusion if they had a known length and had
   been rated by at least one imdb user.

   .. rubric:: References
      :name: references

   http://had.co.nz/data/movies/

   .. rubric:: Examples
      :name: examples

   .. code:: R

      dim(movies)
      head(movies)
