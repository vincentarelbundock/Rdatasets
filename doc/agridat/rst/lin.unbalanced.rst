.. container::

   .. container::

      ============== ===============
      lin.unbalanced R Documentation
      ============== ===============

      .. rubric:: Multi-environment trial of 33 barley genotypes in 18
         locations
         :name: multi-environment-trial-of-33-barley-genotypes-in-18-locations

      .. rubric:: Description
         :name: description

      Multi-environment trial of 33 barley genotypes in 18 locations

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("lin.unbalanced")

      .. rubric:: Format
         :name: format

      A data frame with 405 observations on the following 4 variables.

      ``gen``
         genotype/cultivar

      ``loc``
         location

      ``yield``
         yield (kg/ha)

      ``region``
         region

      .. rubric:: Details
         :name: details

      Yield of six-row barley from the 1986 Eastern Cooperative trial

      The named cultivars Bruce, Laurier, Leger are checks, while the
      other cultivars were tests. Cultivar names use the following
      codes:

      "A" is for Atlantic-Quebec. "O" is for "Ontario".

      "S" is second-year. "T" is third-year.

      .. rubric:: Source
         :name: source

      C. S. Lin, M. R. Binns (1988). A Method for Assessing Regional
      Trial Data When The Test Cultivars Are Unbalanced With Respect to
      Locations. *Canadian Journal of Plant Science*, 68(4): 1103-1110.
      https://doi.org/10.4141/cjps88-130

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(lin.unbalanced)
         dat <- lin.unbalanced

         # location maximum, Lin & Binns table 1
         # aggregate(yield ~ loc, data=dat, FUN=max)

         # location mean/index, Lin & Binns, table 1
         dat2 <- subset(dat, is.element(dat$gen,
           c('Bruce','Laurier','Leger','S1','S2',
             'S3','S4','S5','S6','S7','T1','T2')))
         aggregate(yield ~ loc, data=dat2, FUN=mean)

         libs(reshape2)
         dat3 <- acast(dat, gen ~ loc, value.var="yield")
         libs(lattice)
         lattice::levelplot(t(scale(dat3)), main="lin.unbalanced", xlab="loc", ylab="genotype")

         # calculate the superiority measure of Lin & Binns 1988.
         # lower is better
         locmax <- apply(dat3, 2, max, na.rm=TRUE)
         P <- apply(dat3, 1, function(x) {
           sum((x-locmax)^2, na.rm=TRUE)/(2*length(na.omit(x)))
         })/1000
         P <- sort(P)
         round(P) # match Lin & Binns 1988 table 2, column P

         ## End(Not run)
