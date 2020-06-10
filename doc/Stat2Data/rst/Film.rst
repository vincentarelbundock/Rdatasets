==== ===============
Film R Documentation
==== ===============

Film Data from Leonard Maltin's Guide
-------------------------------------

Description
~~~~~~~~~~~

Film data from Maltin's Movie and Video Guide

Format
~~~~~~

A data frame with 100 observations on the following 9 variables.

+-----------------+---------------------------------------------------+
| ``Title``       | Movie title                                       |
+-----------------+---------------------------------------------------+
| ``Year``        | Year the movie was released                       |
+-----------------+---------------------------------------------------+
| ``Time``        | Running time (in minutes)                         |
+-----------------+---------------------------------------------------+
| ``Cast``        | Number of cast members listed in the guide        |
+-----------------+---------------------------------------------------+
| ``Rating``      | Maltin rating (range is 1 to 4, in steps of 0.5)  |
+-----------------+---------------------------------------------------+
| ``Description`` | Number of lines of text Maltin uses to describe   |
|                 | the movie                                         |
+-----------------+---------------------------------------------------+
| ``Origin``      | Country: 0 = USA, 1 = Great Britain, 2 = France,  |
|                 | 3 = Italy, 4 = Canada                             |
+-----------------+---------------------------------------------------+
| ``Time_code``   | ``long``\ =90 minutes or longer ``short``\ =under |
|                 | 90 minutes                                        |
+-----------------+---------------------------------------------------+
| ``Good``        | ``1``\ =rating of 3 stars or better ``0``\ =any   |
|                 | lower rating                                      |
+-----------------+---------------------------------------------------+
|                 |                                                   |
+-----------------+---------------------------------------------------+

Details
~~~~~~~

One statistician movie fan decided to use statistics to study the movie
ratings in his favorite movie guide, Movie and Video Guide (1996), by
Leonard Maltin. Maltin rates movies on a one-star to four-star system,
in increments of half-stars, with higher numbers being better. The guide
also includes additional information on each film. The statistician used
a random number generator to select a simple random sample of 100 movies
rated by the Guide.

Source
~~~~~~

Data from Leonard Maltin's Movie and Video Guide (1996)
