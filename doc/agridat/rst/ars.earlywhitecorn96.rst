.. container::

   .. container::

      ==================== ===============
      ars.earlywhitecorn96 R Documentation
      ==================== ===============

      .. rubric:: Multi-environment trial of early white food corn
         :name: multi-environment-trial-of-early-white-food-corn

      .. rubric:: Description
         :name: description

      Multi-environment trial of early white food corn for 60 white
      hybrids.

      .. rubric:: Format
         :name: format

      A data frame with 540 observations on the following 9 variables.

      ``loc``
         location, 9 levels

      ``gen``
         gen, 60 levels

      ``yield``
         yield, bu/ac

      ``stand``
         stand, percent

      ``rootlodge``
         root lodging, percent

      ``stalklodge``
         stalk lodging, percent

      ``earht``
         ear height, inches

      ``flower``
         days to flower

      ``moisture``
         moisture, percent

      .. rubric:: Details
         :name: details

      Data are the average of 3 replications.

      Yields were measured for each plot and converted to bushels / acre
      and adjusted to 15.5 percent moisture.

      Stand is expressed as a percentage of the optimum plant stand.

      Lodging is expressed as a percentage of the total plants for each
      hybrid.

      Ear height was measured from soil level to the top ear leaf
      collar. Heights are expressed in inches.

      Days to flowering is the number of days from planting to
      mid-tassel or mid-silk.

      Moisture of the grain was measured at harvest.

      .. rubric:: Source
         :name: source

      L. Darrah, R. Lundquist, D. West, C. Poneleit, B. Barry, B. Zehr,
      A. Bockholt, L. Maddux, K. Ziegler, and P. Martin. (1996). *White
      Food Corn 1996 Performance Tests*. Agricultural Research Service
      Special Report 502.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           
           data(ars.earlywhitecorn96)
           dat <- ars.earlywhitecorn96

           libs(lattice)
           # These views emphasize differences between locations
           dotplot(gen~yield, dat, group=loc, auto.key=list(columns=3),
                   main="ars.earlywhitecorn96")
           ## dotplot(gen~stalklodge, dat, group=loc, auto.key=list(columns=3),
           ##         main="ars.earlywhitecorn96")
           splom(~dat[,3:9], group=dat$loc, auto.key=list(columns=3),
                 main="ars.earlywhitecorn96")
           
           # MANOVA
           m1 <- manova(cbind(yield,earht,moisture) ~ gen + loc, dat)
           m1
           summary(m1)
           

         ## End(Not run)
