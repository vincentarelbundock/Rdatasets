.. container::

   =========== ===============
   seasons_raw R Documentation
   =========== ===============

   .. rubric:: Data about each season aired in the US (raw)
      :name: data-about-each-season-aired-in-the-us-raw

   .. rubric:: Description
      :name: description

   This data has one row per season aired in the US as 'The Great
   British Baking Show'.

   .. rubric:: Usage
      :name: usage

   ::

      seasons_raw

   .. rubric:: Format
      :name: format

   A data frame with 8 rows representing individual series and 11
   variables:

   series
      an integer denoting UK series (``1``-``8``)

   episode
      an integer denoting total number of episodes within series

   us_season
      an integer denoting US season (``1``-``5``)

   us_airdate
      a date denoting original airdate of episode in the US, according
      to
      `pbs.org <https://www.pbs.org/food/shows/great-british-baking-show/>`__

   .. rubric:: Source
      :name: source

   US airdates manually recorded from
   https://www.pbs.org/food/shows/great-british-baking-show/

   .. rubric:: Examples
      :name: examples

   ::

      if (require('tibble')) {
        seasons_raw
       }
      head(seasons_raw)
