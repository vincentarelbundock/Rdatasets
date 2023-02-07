.. container::

   ===== ===============
   state R Documentation
   ===== ===============

   .. rubric:: US State Facts and Figures
      :name: us-state-facts-and-figures

   .. rubric:: Description
      :name: description

   Data sets related to the 50 states of the United States of America.

   .. rubric:: Usage
      :name: usage

   ::

      state.abb
      state.area
      state.center
      state.division
      state.name
      state.region
      state.x77

   .. rubric:: Details
      :name: details

   R currently contains the following “state” data sets. Note that all
   data are arranged according to alphabetical order of the state names.

   ``state.abb``:
      character vector of 2-letter abbreviations for the state names.

   ``state.area``:
      numeric vector of state areas (in square miles).

   ``state.center``:
      list with components named ``x`` and ``y`` giving the approximate
      geographic center of each state in negative longitude and
      latitude. Alaska and Hawaii are placed just off the West Coast.

   ``state.division``:
      factor giving state divisions (New England, Middle Atlantic, South
      Atlantic, East South Central, West South Central, East North
      Central, West North Central, Mountain, and Pacific).

   ``state.name``:
      character vector giving the full state names.

   ``state.region``:
      factor giving the region (Northeast, South, North Central, West)
      that each state belongs to.

   ``state.x77``:
      matrix with 50 rows and 8 columns giving the following statistics
      in the respective columns.

      ``Population``:
         population estimate as of July 1, 1975

      ``Income``:
         per capita income (1974)

      ``Illiteracy``:
         illiteracy (1970, percent of population)

      ``Life Exp``:
         life expectancy in years (1969–71)

      ``Murder``:
         murder and non-negligent manslaughter rate per 100,000
         population (1976)

      ``HS Grad``:
         percent high-school graduates (1970)

      ``Frost``:
         mean number of days with minimum temperature below freezing
         (1931–1960) in capital or large city

      ``Area``:
         land area in square miles

   .. rubric:: Source
      :name: source

   U.S. Department of Commerce, Bureau of the Census (1977) *Statistical
   Abstract of the United States*.

   U.S. Department of Commerce, Bureau of the Census (1977) *County and
   City Data Book*.

   .. rubric:: References
      :name: references

   Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) *The New S
   Language*. Wadsworth & Brooks/Cole.
