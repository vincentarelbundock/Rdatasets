.. container::

   .. container::

      ======== ===============
      episodes R Documentation
      ======== ===============

      .. rubric:: Episodes
         :name: episodes

      .. rubric:: Description
         :name: description

      Each episodes' statistics. This dataset is made by collapsing
      ``challenges`` by ``series`` and ``episode``.

      .. rubric:: Usage
         :name: usage

      ::

         episodes

      .. rubric:: Format
         :name: format

      A data frame with 94 rows representing individual episodes per
      series and 10 variables:

      series
         An integer denoting UK series (``1``-``10``).

      episode
         An integer denoting episode number within a series.

      bakers_appeared
         an integer denoting the number of bakers who appeared in a
         given episode.

      bakers_out
         An integer denoting the number of bakers were either
         eliminated, left at will, or left due to illness in that
         episode.

      bakers_remaining
         An integer denoting the number of bakers who remained at the
         end of a given episode.

      star_bakers
         An integer denoting the number of bakers crowned Star Baker in
         a given episode.

      technical_winners
         An integer denoting the number of bakers who placed first in
         the technical challenge.

      sb_name
         A character string with the names of the bakers who won Star
         Baker in a given episode, separated by commas.

      winner_name
         A character string with the name of the series winner. Only
         present for final episodes within each series.

      eliminated
         A character string with the name of the bakers who left a given
         episode, separated by commas.

      .. rubric:: Source
         :name: source

      See
      https://en.wikipedia.org/wiki/The_Great_British_Bake_Off#Format

      .. rubric:: Examples
         :name: examples

      ::

         if (require('tibble')) {
           episodes
          }
         head(episodes)
