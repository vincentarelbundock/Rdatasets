.. container::

   .. container::

      ========== ===============
      ahca_polls R Documentation
      ========== ===============

      .. rubric:: American Health Care Act Polls
         :name: american-health-care-act-polls

      .. rubric:: Description
         :name: description

      The raw data behind the story "Why The GOP Is So Hell-Bent On
      Passing An Unpopular Health Care Bill"
      https://fivethirtyeight.com/features/why-the-gop-is-so-hell-bent-on-passing-an-unpopular-health-care-bill/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         ahca_polls

      .. rubric:: Format
         :name: format

      A data frame with 15 rows representing polls and 7 variables:

      start
         Start date of the poll.

      end
         End date of the poll.

      pollster
         The entity that conducts and collects information from the
         poll.

      favor
         The number of affirmative responses to the question at the
         pollster.

      oppose
         The number of negative responses to the question at the
         pollster.

      url
         The website associated with the polling question.

      text
         The polling question asked at the pollster.

      .. rubric:: Source
         :name: source

      See
      https://github.com/fivethirtyeight/data/blob/master/ahca-polls/README.md

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # To convert data frame to tidy data (long) format, run:
         library(dplyr)
         library(tidyr)
         library(stringr)
         ahca_polls_tidy <- ahca_polls %>%
           pivot_longer(-c(start, end, pollster, text, url), names_to = "opinion", values_to = "count")
