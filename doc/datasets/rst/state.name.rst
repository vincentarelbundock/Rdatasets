.. container::

   ===== ===============
   state R Documentation
   ===== ===============

   .. rubric:: US State Facts and Figures
      :name: state

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
      See ‘Examples’ on how to “correct”.

   ``state.division``:
      ``factor`` giving state divisions (New England, Middle Atlantic,
      South Atlantic, East South Central, West South Central, East North
      Central, West North Central, Mountain, and Pacific).

   ``state.name``:
      character vector giving the full state names.

   ``state.region``:
      ``factor`` giving the region (Northeast, South, North Central,
      West) that each state belongs to.

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

   Note that a square mile is by definition exactly
   ``(cm(1760 * 3 * 12) / 100 / 1000)^2`` ``km^2``, i.e.,
   ``2.589988110336 km^2``.

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

   .. rubric:: Examples
      :name: examples

   ::

      (dst <- dxy <- data.frame(state.center, row.names=state.abb))
      ## Alaska and Hawaii are placed just off the West Coast (for compact map drawing):
      dst[c("AK", "HI"),]
      ## state.center2 := version of state.center with "correct" coordinates for AK & HI:
      ## From https://pubs.usgs.gov/gip/Elevations-Distances/elvadist.html#Geographic%20Centers
      ##   Alaska   63°50' N., 152°00' W., 60 miles northwest of Mount McKinley
      ##   Hawaii   20°15' N., 156°20' W., off Maui Island
      dxy["AK",] <- c(-152.  , 63.83) # or  c(-152.11, 65.17)
      dxy["HI",] <- c(-156.33, 20.25) # or  c(-156.69, 20.89)
      state.center2 <- as.list(dxy)

      plot(dxy, asp=1.2, pch=3, col=2)
      text(state.center2, state.abb, cex=1/2, pos=4, offset=1/4)
      i <- c("AK","HI")
      do.call(arrows, c(setNames(c(dst[i,], dxy[i,]), c("x0","y0", "x1","y1")),
                        col=adjustcolor(4, .7), length=1/8))
      points(dst[i,], col=2)
      if(FALSE) { # if(require("maps")) {
         map("state", interior = FALSE,          add = TRUE)
         map("state", boundary = FALSE, lty = 2, add = TRUE)
      }
