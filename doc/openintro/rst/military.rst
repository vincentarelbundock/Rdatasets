.. container::

   ======== ===============
   military R Documentation
   ======== ===============

   .. rubric:: US Military Demographics
      :name: military

   .. rubric:: Description
      :name: description

   This dataset contains demographic information on every member of the
   US armed forces including gender, race, and rank.

   .. rubric:: Usage
      :name: usage

   ::

      military

   .. rubric:: Format
      :name: format

   A data frame with 1,414,593 observations on the following 6
   variables.

   grade
      The status of the service member as ``enlisted`` ``officer`` or
      ``warrant officer``.

   branch
      The branch of the armed forces: ``air force``, ``army``,
      ``marine corps``, ``navy``.

   gender
      Whether the service member is ``female`` or ``male``.

   race
      The race identified by the service member: ``ami/aln`` (american
      indian/alaskan native), ``asian``, ``black``, ``multi``
      (multi-ethnic), ``p/i`` (pacific islander), ``unk`` (unknown), or
      ``white``.

   hisp
      Whether a service member identifies with being hispanic (``TRUE``)
      or not (``FALSE``).

   rank
      The numeric rank of the service member (higher number indicates
      higher rank).

   .. rubric:: Details
      :name: details

   The branches covered by this data set include the Army, Navy, Air
   Force, and Marine Corps. Demographic information on the Coast Guard
   is contained in the original data set but has not been included here.

   .. rubric:: Source
      :name: source

   Data provided by the Department of Defense and made available at
   https://catalog.data.gov/dataset/personnel-trends-by-gender-race,
   retrieved 2012-02-20.

   .. rubric:: Examples
      :name: examples

   ::

      ## Not run: 
      library(dplyr)
      library(ggplot2)
      library(forcats)

      # Proportion of females in military branches
      military %>%
        ggplot(aes(x = branch, fill = gender)) +
        geom_bar(position = "fill") +
        labs(
          x = "Branch", y = "Proportion", fill = "Gender",
          title = "Proportion of females in military branches"
        )

      # Proportion of army officer females across ranks
      military %>%
        filter(
          grade == "officer",
          branch == "army"
        ) %>%
        ggplot(aes(x = factor(rank), fill = fct_rev(gender))) +
        geom_bar(position = "fill") +
        labs(
          x = "Rank", y = "Proportion", fill = "Gender",
          title = "Proportion of army officer females across ranks"
        )

      ## End(Not run)
