.. container::

   .. container::

      =========== ===============
      lyons.wheat R Documentation
      =========== ===============

      .. rubric:: Multi-environment trial of winter wheat at 12 sites in
         4 years.
         :name: multi-environment-trial-of-winter-wheat-at-12-sites-in-4-years.

      .. rubric:: Description
         :name: description

      Yield of winter wheat at 12 sites in 4 years.

      .. rubric:: Format
         :name: format

      A data frame with 48 observations on the following 3 variables.

      ``loc``
         location, 12 levels

      ``year``
         year, numeric

      ``yield``
         yield (kg)

      .. rubric:: Details
         :name: details

      Krzanowski uses this briefly for multi-dimensional scaling.

      .. rubric:: Source
         :name: source

      R. Lyons (1980). A review of multidimensional scaling. Unpublished
      M.Sc. dissertation, University of Reading.

      .. rubric:: References
         :name: references

      Krzanowski, W.J. (1988) *Principles of multivariate analysis*.
      Oxford University Press.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(lyons.wheat)
         dat <- lyons.wheat

         libs(lattice)
         xyplot(yield~factor(year), dat, group=loc,
           main="lyons.wheat",
           auto.key=list(columns=4), type=c('p','l'))

         ## End(Not run)
