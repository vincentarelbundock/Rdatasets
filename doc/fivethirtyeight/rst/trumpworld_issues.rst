.. container::

   .. container::

      ================= ===============
      trumpworld_issues R Documentation
      ================= ===============

      .. rubric:: What the World Thinks of Trump
         :name: what-the-world-thinks-of-trump

      .. rubric:: Description
         :name: description

      The raw data behind the story "What the World Thinks of Trump"
      https://fivethirtyeight.com/features/what-the-world-thinks-of-trump/:
      Trump World Issues Dataset

      .. rubric:: Usage
         :name: usage

      .. code:: R

         trumpworld_issues

      .. rubric:: Format
         :name: format

      A data frame with 185 rows representing countries and 6 variables:

      country
         The country whose population is being polled

      net_approval
         The difference in the number of respondents from the given
         country who approve and who disapprove of the issue (Trump
         proposal) in question (approve-disapprove)

      approve
         The number of respondents from the given country who approve of
         the issue (Trump proposal)

      disapprove
         The number of respondents who disapprove of the issue

      dk_refused
         undefined

      issue
         The specific trump policy proposal being posed. Specifically:
         1: Withdraw support for international climate change agreements
         2: Build a wall on the border between the U. S. and Mexico 3:
         Withdraw U.S. support from the Iran nuclear weapons agreement
         4: Withdraw U.S. support for major trade agreements 5:
         Introduce tighter restrictions on those entering the U.S. from
         some majority-Muslim countries

      .. rubric:: Source
         :name: source

      Pew Research Center
      https://www.pewresearch.org/fact-tank/2017/07/17/9-charts-on-how-the-world-sees-trump/

      .. rubric:: See Also
         :name: see-also

      ``trumpworld_polls``
