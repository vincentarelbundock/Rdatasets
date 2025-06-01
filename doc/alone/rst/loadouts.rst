.. container::

   .. container::

      ======== ===============
      loadouts R Documentation
      ======== ===============

      .. rubric:: Loadouts
         :name: loadouts

      .. rubric:: Description
         :name: description

      Information on each survivalists loadout of 10 items

      .. rubric:: Usage
         :name: usage

      .. code:: R

         loadouts

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      ``version``
         Country code for the version of the show

      ``season``
         The season number

      ``id``
         Survivalist ID

      ``name``
         Name of the survivalist

      ``item_number``
         Item number

      ``item_detailed``
         Detailed loadout item description

      ``item``
         Loadout item. Simplified for aggregation

      .. rubric:: Source
         :name: source

      https://en.wikipedia.org/wiki/Alone_(TV_series)

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)
         library(ggplot2)
         library(forcats)

         loadouts |>
           count(item) |>
           mutate(item = fct_reorder(item, n, max)) |>
           ggplot(aes(item, n)) +
           geom_col() +
           geom_text(aes(item, n + 3, label = n)) +
           coord_flip()
