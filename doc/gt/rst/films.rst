.. container::

   .. container::

      ===== ===============
      films R Documentation
      ===== ===============

      .. rubric:: Feature films in competition at the Cannes Film
         Festival
         :name: feature-films-in-competition-at-the-cannes-film-festival

      .. rubric:: Description
         :name: description

      Each entry in the ``films`` is a feature film that appeared in the
      official selection during a festival year (starting in 1946 and
      active to the present day). The ``year`` column refers to the year
      of the festival and this figure doesn't always coincide with the
      release year of the film. The film's title reflects the most
      common title of the film in English, where the ``original_title``
      column provides the title of the film in its spoken language
      (transliterated to Roman script where necessary).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         films

      .. rubric:: Format
         :name: format

      A tibble with 1,851 rows and 8 variables:

      year
         The year of the festival in which the film was in competition.

      title,original_title
         The ``title`` field provides the film title used for
         English-speaking audiences. The ``original_title`` field is
         populated when ``title`` differs greatly from the non-English
         original.

      director
         The director or set of co-directors for the film. Multiple
         directors are separated by a comma.

      languages
         The languages spoken in the film in the order of appearance.
         This consists of ISO 639 language codes (primarily as
         two-letter codes, but using three-letter codes where
         necessary).

      countries_of_origin
         The country or countries of origin for the production. Here,
         2-letter ISO 3166-1 country codes (set in uppercase) are used.

      run_time
         The run time of the film in hours and minutes. This is given as
         a string in the format ``⁠[x]h [y]m⁠``.

      imdb_url
         The URL of the film's information page in the Internet Movie
         Database (IMDB).

      .. rubric:: Examples
         :name: examples

      Here is a glimpse at the data available in ``films``.

      .. container:: sourceCode r

         ::

            dplyr::glimpse(films)
            #> Rows: 1,851
            #> Columns: 8
            #> $ year                <int> 1946, 1946, 1946, 1946, 1946, 1946, 1946, 1946, 19~
            #> $ title               <chr> "The Lovers", "Anna and the King of Siam", "Blood ~
            #> $ original_title      <chr> "Amanti in fuga", NA, "Blod och eld", "Brevet fra ~
            #> $ director            <chr> "Giacomo Gentilomo", "John Cromwell", "Anders Henr~
            #> $ languages           <chr> "it", "en", "sv", "da", "en,fr", "en", "pt", "ru",~
            #> $ countries_of_origin <chr> "IT", "US", "SE", "DK", "GB", "GB", "PT", "SU", "D~
            #> $ run_time            <chr> "1h 30m", "2h 8m", "1h 40m", "1h 18m", "1h 26m", "~
            #> $ imdb_url            <chr> "https://www.imdb.com/title/tt0038297/", "https://~

      .. rubric:: Dataset ID and Badge
         :name: dataset-id-and-badge

      DATA-9

      .. container::

         |This image of that of a dataset badge.|

      .. rubric:: Dataset Introduced
         :name: dataset-introduced

      ``v0.11.0``

      .. rubric:: See Also
         :name: see-also

      Other datasets: ``constants``, ``countrypops``, ``exibble``,
      ``gibraltar``, ``gtcars``, ``illness``, ``metro``, ``nuclides``,
      ``peeps``, ``photolysis``, ``pizzaplace``, ``reactions``,
      ``rx_addv``, ``rx_adsl``, ``sp500``, ``sza``, ``towny``

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_films.png
