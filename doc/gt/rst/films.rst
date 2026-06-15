===== ===============
films R Documentation
===== ===============

Feature films in competition at the Cannes Film Festival
--------------------------------------------------------

Description
~~~~~~~~~~~

Each entry in the ``films`` is a feature film that appeared in the
official selection during a festival year (starting in 1946 and active
to the present day). The ``year`` column refers to the year of the
festival and this figure doesn't always coincide with the release year
of the film. The film's title reflects the most common title of the film
in English, where the ``original_title`` column provides the title of
the film in its spoken language (transliterated to Roman script where
necessary).

Usage
~~~~~

.. code:: R

   films

Format
~~~~~~

A tibble with 1,873 rows and 8 variables:

year
   The year of the festival in which the film was in competition.

title,original_title
   The ``title`` field provides the film title used for English-speaking
   audiences. The ``original_title`` field is populated when ``title``
   differs greatly from the non-English original.

director
   The director or set of co-directors for the film. Multiple directors
   are separated by a comma.

languages
   The languages spoken in the film in the order of appearance. This
   consists of ISO 639 language codes (primarily as two-letter codes,
   but using three-letter codes where necessary).

countries_of_origin
   The country or countries of origin for the production. Here, 2-letter
   ISO 3166-1 country codes (set in uppercase) are used.

run_time
   The run time of the film in hours and minutes. This is given as a
   string in the format ``⁠[x]h [y]m⁠``.

imdb_url
   The URL of the film's information page in the Internet Movie Database
   (IMDB).

Dataset ID and Badge
~~~~~~~~~~~~~~~~~~~~

DATA-9

.. container::

   |This image of that of a dataset badge.|

Dataset Introduced
~~~~~~~~~~~~~~~~~~

``v0.11.0`` (July 9, 2024)

See Also
~~~~~~~~

Other datasets: ``constants``, ``countrypops``, ``exibble``,
``gibraltar``, ``gtcars``, ``illness``, ``metro``, ``nuclides``,
``peeps``, ``photolysis``, ``pizzaplace``, ``reactions``, ``rx_addv``,
``rx_adsl``, ``sp500``, ``sza``, ``towny``

Examples
~~~~~~~~

.. code:: R

   dplyr::glimpse(films)

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_films.png
