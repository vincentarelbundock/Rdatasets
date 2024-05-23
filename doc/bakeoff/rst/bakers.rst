.. container::

   .. container::

      ====== ===============
      bakers R Documentation
      ====== ===============

      .. rubric:: Bakers
         :name: bakers

      .. rubric:: Description
         :name: description

      Information about each baker and their performance during the
      series they appeared on.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         bakers

      .. rubric:: Format
         :name: format

      A data frame with 120 rows representing individual bakers and 24
      variables:

      series
         An integer denoting UK series (``1``-``10``).

      baker_full
         A character string giving full name.

      baker
         A character string giving given or nickname.

      age
         An integer denoting age in years at first episode appeared.

      occupation
         A character string giving occupation.

      hometown
         A character string giving hometown.

      baker_last
         A character string giving family name.

      baker_first
         A character string giving given name.

      star_baker
         An integer denoting the number of times a given baker won Star
         Baker.

      technical_winner
         An integer denoting the number of times a given baker won first
         place in the technical challenge.

      technical_top3
         An integer denoting the number of times a given baker was in
         the top 3 (1st, 2nd, or 3rd) on the technical challenge.

      technical_bottom
         An integer denoting the number of times a given baker was in
         the bottom 3 on the technical challenge.

      technical_highest
         An integer denoting the best technical rank earned by a given
         baker across all episodes appeared (higher is better).

      technical_lowest
         An integer denoting the worst technical rank earned by a given
         baker across all episodes appeared (higher is better).

      technical_median
         An integer denoting the median technical rank earned by a given
         baker across all episodes appeared (higher is better).

      series_winner
         An integer. Is ``0`` if not the series winner, ``1`` if series
         winner.

      series_runner_up
         An integer. Is ``0`` if not a runner-up, ``1`` if a runner-up.

      total_episodes_appeared
         An integer denoting the total number of episodes in which a
         given baker appeared.

      first_date_appeared
         A date denoting original airdate of the first episode in which
         a given baker appeared (equivalent to the series premiere
         episode in the UK.)

      last_date_appeared
         A date denoting original airdate of the last episode in which a
         given baker appeared (in the UK).

      first_date_us
         A date denoting original airdate of the first episode in which
         a given baker appeared (equivalent to the series premiere
         episode in the US).

      last_date_us
         A date denoting original airdate of the last episode in which a
         given baker appeared (in the US).

      percent_episodes_appeared
         A percentage denoting the number of episodes in a given
         series/season in which a given baker appeared out of all
         episodes aired in that series/season.

      percent_technical_top3
         A percentage denoting the number of episodes in which a given
         baker placed in the top 3 for the technical challenge, out of
         the number of total episodes that the baker appeared in.

      .. rubric:: Source
         :name: source

      See
      https://en.wikipedia.org/wiki/The_Great_British_Bake_Off_(series_1)#The_Bakers,
      for example, for Series 1 bakers.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         if (require('tibble')) {
           bakers
          }
         head(bakers)
