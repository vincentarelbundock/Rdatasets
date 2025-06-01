.. container::

   .. container::

      ============ ===============
      besag.checks R Documentation
      ============ ===============

      .. rubric:: Check variety yields in winter wheat.
         :name: check-variety-yields-in-winter-wheat.

      .. rubric:: Description
         :name: description

      Check variety yields in winter wheat.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("besag.checks")

      .. rubric:: Format
         :name: format

      A data frame with 364 observations on the following 4 variables.

      ``yield``
         yield, units of 10g

      ``row``
         row

      ``col``
         column

      ``gen``
         genotype/variety

      .. rubric:: Details
         :name: details

      This data was used by Besag to show the spatial variation in a
      field experiment, but Besag did not use the data for any analysis.

      Yields of winter wheat varieties (Bounty and Huntsman) at the
      Plant Breeding Institute, Cambridge, in 1980. These data are the
      'checks' genotypes in a larger variety trial.

      There is a column of checks, then five columns of new varieties.
      Repeat.

      Plot dimensions approx 1.5 by 4.5 metres

      Field length: 52 rows \* 4.5 m = 234 m

      Field width: 31 columns \* 1.5 m = 46.5

      Electronic version of data supplied by David Clifford.

      .. rubric:: Source
         :name: source

      Besag, J.E. & Kempton R.A. (1986). Statistical analysis of field
      experiments using neighbouring plots. Biometrics, 42, 231-251.
      https://doi.org/10.2307/2531047

      .. rubric:: References
         :name: references

      Kempton, Statistical Methods for Plant Variety Evaluation, page
      91–92

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
         library(agridat)
         data(besag.checks)
         dat <- besag.checks
           libs(desplot)
           desplot(dat, yield~col*row,
                   num=gen, aspect=234/46.5, # true aspect
                   main="besag.checks")

         ## End(Not run)
