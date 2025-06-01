.. container::

   .. container::

      ========================= ===============
      pederson.lettuce.repeated R Documentation
      ========================= ===============

      .. rubric:: Repeated measurements of lettuce growth
         :name: repeated-measurements-of-lettuce-growth

      .. rubric:: Description
         :name: description

      Repeated measurements of lettuce growth for 3 treatments.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("pederson.lettuce.repeated")

      .. rubric:: Format
         :name: format

      A data frame with 594 observations on the following 4 variables.

      ``plant``
         plant number

      ``day``
         day of observation

      ``trt``
         treatment

      ``weight``
         weight

      .. rubric:: Details
         :name: details

      Experiment conducted in a greenhouse in Silver Bay, Minnesota.
      Plants were grown hydroponically. Treatment 1 had 9 plants per
      raft. Treatment 2 had 18 plants, treatment 3 had 36 plants. The
      response variable is weight of plant, roots, soil, cup, and water.
      The plants were measured repeatedly beginning Dec 1, and ending
      Jan 9, when the plants were harvested.

      .. rubric:: Source
         :name: source

      Levi Dawson Pederson (2015). Mixed Model Analysis for Repeated
      Measures of Lettuce Growth Thesis at University of Minnesota.
      Appendix C.
      https://scse.d.umn.edu/sites/scse.d.umn.edu/files/pedersonprojectthesis.pdf

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(pederson.lettuce.repeated)
         dat <- pederson.lettuce.repeated

         libs(lattice)
         dat <- dat[order(dat$day),]
         xyplot(weight ~ day|trt, dat, type='l', group=plant, layout=c(3,1),
         main="pederson.lettuce.repeated")

         # Pederson used this SAS MIXED model for unstructured covariance
         # proc mixed data=Project.Spacingdata; 
         # class trt plant day; 
         # model weight=trt day trt*day; 
         # repeated day / subject=plant type=un r rcorr;   

         # This should give the same results as SAS, but does not.
         libs(nlme)
         dat <- transform(dat, plant=factor(plant), day=factor(day))
         datg <- groupedData(weight ~ day|plant, data=dat)
         un1 <- gls(weight ~ trt * day, data=datg,
                    correlation=corSymm(value=rep(.6,55), form = ~ 1 | plant),
                    control=lmeControl(opt="optim", msVerbose=TRUE,
                                       maxIter=500, msMaxIter=500))
         logLik(un1)*2 # nlme has 1955, SAS had 1898.6

         # Comparing the SAS results in Pederson (page 16) and the nlme results, we notice
         # the SAS correlations in table 5.2 are unusually low for the first
         # column. The nlme results have a higher correlation in the first column
         # and just "look" better
         un1


         ## End(Not run)
