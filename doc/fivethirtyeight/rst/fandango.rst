.. container::

   .. container::

      ======== ===============
      fandango R Documentation
      ======== ===============

      .. rubric:: Be Suspicious Of Online Movie Ratings, Especially
         Fandango's
         :name: be-suspicious-of-online-movie-ratings-especially-fandangos

      .. rubric:: Description
         :name: description

      The raw data behind the story "Be Suspicious Of Online Movie
      Ratings, Especially Fandango's"
      https://fivethirtyeight.com/features/fandango-movies-ratings/.
      contains every film that has a Rotten Tomatoes rating, a RT User
      rating, a Metacritic score, a Metacritic User score, and IMDb
      score, and at least 30 fan reviews on Fandango.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         fandango

      .. rubric:: Format
         :name: format

      A data frame with 146 rows representing movies and 23 variables:

      film
         The film in question

      year
         Year of film

      rottentomatoes
         The Rotten Tomatoes Tomatometer score for the film

      rottentomatoes_user
         The Rotten Tomatoes user score for the film

      metacritic
         The Metacritic critic score for the film

      metacritic_user
         The Metacritic user score for the film

      imdb
         The IMDb user score for the film

      fandango_stars
         The number of stars the film had on its Fandango movie page

      fandango_ratingvalue
         The Fandango ratingValue for the film, as pulled from the HTML
         of each page. This is the actual average score the movie
         obtained.

      rt_norm
         The Rotten Tomatoes Tomatometer score for the film , normalized
         to a 0 to 5 point system

      rt_user_norm
         The Rotten Tomatoes user score for the film , normalized to a 0
         to 5 point system

      metacritic_norm
         The Metacritic critic score for the film, normalized to a 0 to
         5 point system

      metacritic_user_nom
         The Metacritic user score for the film, normalized to a 0 to 5
         point system

      imdb_norm
         The IMDb user score for the film, normalized to a 0 to 5 point
         system

      rt_norm_round
         The Rotten Tomatoes Tomatometer score for the film , normalized
         to a 0 to 5 point system and rounded to the nearest half-star

      rt_user_norm_round
         The Rotten Tomatoes user score for the film , normalized to a 0
         to 5 point system and rounded to the nearest half-star

      metacritic_norm_round
         The Metacritic critic score for the film, normalized to a 0 to
         5 point system and rounded to the nearest half-star

      metacritic_user_norm_round
         The Metacritic user score for the film, normalized to a 0 to 5
         point system and rounded to the nearest half-star

      imdb_norm_round
         The IMDb user score for the film, normalized to a 0 to 5 point
         system and rounded to the nearest half-star

      metacritic_user_vote_count
         The number of user votes the film had on Metacritic

      imdb_user_vote_count
         The number of user votes the film had on IMDb

      fandango_votes
         The number of user votes the film had on Fandango

      fandango_difference
         The difference between the presented Fandango_Stars and the
         actual Fandango_Ratingvalue

      .. rubric:: Source
         :name: source

      The data from Fandango was pulled on Aug. 24, 2015.
