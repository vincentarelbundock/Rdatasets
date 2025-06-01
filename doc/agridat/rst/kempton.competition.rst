.. container::

   .. container::

      =================== ===============
      kempton.competition R Documentation
      =================== ===============

      .. rubric:: Sugar beet trial with competition effects
         :name: sugar-beet-trial-with-competition-effects

      .. rubric:: Description
         :name: description

      Yield of sugar beets for 36 varieties in a 3-rep RCB experiment.
      Competition effects are present.

      .. rubric:: Format
         :name: format

      A data frame with 108 observations on the following 5 variables.

      ``gen``
         genotype, 36 levels

      ``rep``
         rep, 3 levels

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, kg/plot

      .. rubric:: Details
         :name: details

      Entries are grown in 12m rows, 0.5m apart. Guard rows were grown
      alongside replicate boundaries, but yields of these plots are not
      included.

      .. rubric:: Source
         :name: source

      R Kempton, 1982. Adjustment for competition between varieties in
      plant breeding trials, *Journal of Agricultural Science*, 98,
      599-611. https://doi.org/10.1017/S0021859600054381

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
         library(agridat)

         data(kempton.competition)
         dat <- kempton.competition

         # Raw means in Kempton table 2
         round(tapply(dat$yield, dat$gen, mean),2)

         # Fixed genotype effects, random rep effects,
         # Autocorrelation of neighboring plots within the same rep, phi = -0.22
         libs(nlme)
         m1 <- lme(yield ~ -1+gen, random=~1|rep, data=dat,
                   corr=corAR1(form=~col|rep))
         # Lag 1 autocorrelation is negative--evidence of competition
         plot(ACF(m1), alpha=.05, grid=TRUE, main="kempton.competition",
              ylab="Autocorrelation between neighborning plots")

         # Genotype effects
         round(fixef(m1),2)

         # Variance of yield increases with yield
         plot(m1, main="kempton.competition")


         ## End(Not run)
