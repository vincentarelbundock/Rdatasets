.. container::

   ========= ===============
   movielens R Documentation
   ========= ===============

   .. rubric:: Movie ratings
      :name: movielens

   .. rubric:: Description
      :name: description

   MovieLens Latest Dataset (Small)

   .. rubric:: Usage
      :name: usage

   .. code:: R

      movielens

   .. rubric:: Format
      :name: format

   Two object of class ``data.frame``.

   .. rubric:: Details
      :name: details

   -  movieId. Unique ID for the movie.

   -  title. Movie title (not unique).

   -  year. Year the movie was released.

   -  genres. Genres associated with the movie.

   -  userId. Unique ID for the user.

   -  rating. A rating between 0 and 5 for the movie.

   -  timestamp. Date and time the rating was given.

   .. rubric:: Source
      :name: source

   https://files.grouplens.org/datasets/movielens/ml-latest-small.zip

   .. rubric:: References
      :name: references

   F. Maxwell Harper and Joseph A. Konstan. 2015. The MovieLens
   Datasets: History and Context. ACM Transactions on Interactive
   Intelligent Systems (TiiS) 5, 4, Article 19 (December 2015), 19
   pages. DOI=https://dx.doi.org/10.1145/2827872

   .. rubric:: Examples
      :name: examples

   .. code:: R

      head(movielens)
