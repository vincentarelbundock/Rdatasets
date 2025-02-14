.. container::

   .. container::

      ======= ===============
      bechdel R Documentation
      ======= ===============

      .. rubric:: The Dollar-And-Cents Case Against Hollywood's
         Exclusion of Women
         :name: the-dollar-and-cents-case-against-hollywoods-exclusion-of-women

      .. rubric:: Description
         :name: description

      The raw data behind the story "The Dollar-And-Cents Case Against
      Hollywood's Exclusion of Women"
      https://fivethirtyeight.com/features/the-dollar-and-cents-case-against-hollywoods-exclusion-of-women/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         bechdel

      .. rubric:: Format
         :name: format

      A data frame with 1794 rows representing movies and 15 variables:

      year
         Year of release

      imdb
         Text to construct IMDB url. Ex:
         https://www.imdb.com/title/tt1711425

      title
         Movie test

      test
         bechdel test result (detailed, with discrepancies indicated)

      clean_test
         bechdel test result (detailed): ``ok`` = passes test,
         ``dubious``, ``men`` = women only talk about men, ``notalk`` =
         women don't talk to each other, ``nowomen`` = fewer than two
         women

      binary
         Bechdel Test PASS vs FAIL binary

      budget
         Film budget

      domgross
         Domestic (US) gross

      intgross
         Total International (i.e., worldwide) gross

      code
         Bechdel Code

      budget_2013
         Budget in 2013 inflation adjusted dollars

      domgross_2013
         Domestic gross (US) in 2013 inflation adjusted dollars

      intgross_2013
         Total International (i.e., worldwide) gross in 2013 inflation
         adjusted dollars

      period_code
      decade_code

      .. rubric:: Details
         :name: details

      A vignette of an analysis of this dataset using the ``tidyverse``
      can be found on
      `CRAN <https://fivethirtyeightdata.github.io/fivethirtyeightdata/articles/bechdel.html>`__
      or by running:
      ``vignette("bechdel", package = "fivethirtyeightdata")``

      .. rubric:: Source
         :name: source

      https://bechdeltest.com/ and https://www.the-numbers.com/. The
      original data can be found at
      https://github.com/fivethirtyeight/data/tree/master/bechdel.
