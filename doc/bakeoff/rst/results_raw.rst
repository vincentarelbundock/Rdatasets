.. container::

   .. container::

      =========== ===============
      results_raw R Documentation
      =========== ===============

      .. rubric:: Each baker's results by episode (raw)
         :name: each-bakers-results-by-episode-raw

      .. rubric:: Description
         :name: description

      This data has one row per baker for every episode, including
      episodes they did not appear in.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         results_raw

      .. rubric:: Format
         :name: format

      A data frame with 1,136 rows representing individual bakers per
      episode and 4 variables:

      series
         A factor denoting UK series (1-10)

      episode
         A factor denoting episode number within a series

      baker
         A character string giving given or nickname only (note: see
         ``bakers`` for full baker names)

      result
         A factor denoting if the baker was ``"IN"``, ``"OUT"``,
         ``"STAR BAKER"``, or ``"SICK"`` for a given episode. For finale
         episodes, values are either ``"WINNER"`` or ``"RUNNER-UP"``. If
         ``NA``, baker did not appear in episode.

      .. rubric:: Source
         :name: source

      See
      https://en.wikipedia.org/wiki/The_Great_British_Bake_Off_(series_1)#Results_summary,
      for example, for series 1 results summary.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         if (require('tibble')) {
           results_raw
          }
