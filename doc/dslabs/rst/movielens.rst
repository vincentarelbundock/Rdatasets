========= ===============
movielens R Documentation
========= ===============

Movie ratings
-------------

Description
~~~~~~~~~~~

MovieLens Latest Dataset (Small)

Usage
~~~~~

.. code:: R

   movielens

Format
~~~~~~

Two object of class ``data.frame``.

Details
~~~~~~~

- movieId. Unique ID for the movie.

- title. Movie title (not unique).

- year. Year the movie was released.

- genres. Genres associated with the movie.

- userId. Unique ID for the user.

- rating. A rating between 0 and 5 for the movie.

- timestamp. Date and time the rating was given.

Source
~~~~~~

https://files.grouplens.org/datasets/movielens/ml-latest-small.zip

References
~~~~~~~~~~

F. Maxwell Harper and Joseph A. Konstan. 2015. The MovieLens Datasets:
History and Context. ACM Transactions on Interactive Intelligent Systems
(TiiS) 5, 4, Article 19 (December 2015), 19 pages.
DOI=https://dx.doi.org/10.1145/2827872

Examples
~~~~~~~~

.. code:: R

   head(movielens)
