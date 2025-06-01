.. container::

   .. container::

      ================== ===============
      theobald.covariate R Documentation
      ================== ===============

      .. rubric:: Multi-environment trial of corn silage, Year \* Loc \*
         Variety with covariate
         :name: multi-environment-trial-of-corn-silage-year-loc-variety-with-covariate

      .. rubric:: Description
         :name: description

      Corn silage yields for maize in 5 years at 7 districts for 10
      hybrids.

      .. rubric:: Format
         :name: format

      A data frame with 256 observations on the following 5 variables.

      ``year``
         year, 1990-1994

      ``env``
         environment/district, 1-7

      ``gen``
         genotype, 1-10

      ``yield``
         dry-matter silage yield for corn

      ``chu``
         corn heat units, thousand degrees Celsius

      Used with permission of Chris Theobald.

      .. rubric:: Details
         :name: details

      The trials were carried out in seven districts in the maritime
      provinces of Eastern Canada. Different fields were used in
      successive years. The covariate CHU (Corn Heat Units) is the
      accumulated average daily temperatures (thousands of degrees
      Celsius) during the growing season at each location.

      .. rubric:: Source
         :name: source

      Chris M. Theobald and Mike Talbot and Fabian Nabugoomu, 2002. A
      Bayesian Approach to Regional and Local-Area Prediction From Crop
      Variety Trials. Journ Agric Biol Env Sciences, 7, 403–419.
      https://doi.org/10.1198/108571102230

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(theobald.covariate)
           dat <- theobald.covariate
           libs(lattice)
           xyplot(yield ~ chu|gen, dat, type=c('p','smooth'),
                  xlab =  "chu = corn heat units",
                  main="theobald.covariate - yield vs heat")

           # REML estimates (Means) in table 3 of Theobald 2002
           libs(lme4)
           dat <- transform(dat, year=factor(year))
           m0 <- lmer(yield ~ -1 + gen + (1|year/env) + (1|gen:year), data=dat)
           round(fixef(m0),2)


           # Use JAGS to fit Theobald (2002) model 3.2 with 'Expert' prior
           # Requires JAGS to be installed
           if(0) { 
           libs(reshape2)
           ymat <- acast(dat, year+env~gen, value.var='yield')
           chu <- acast(dat, year+env~., mean, value.var='chu', na.rm=TRUE)
           chu <- as.vector(chu - mean(chu))  # Center the covariate
           dat$yr <- as.numeric(dat$year)
           yridx <- as.vector(acast(dat, year+env~., mean, value.var='yr', na.rm=TRUE))
           dat$loc <- as.numeric(dat$env)
           locidx <- acast(dat, year+env~., mean, value.var='loc', na.rm=TRUE)
           locidx <- as.vector(locidx)

           jdat <- list(nVar = 10, nYear = 5, nLoc = 7, nYL = 29, yield = ymat,
                       chu = chu, year = yridx, loc = locidx)

           libs(rjags)
           m1 <- jags.model(file=system.file(package="agridat", "files/theobald.covariate.jag"),
             data=jdat, n.chains=2)

           # Table 3, Variety deviations from means (Expert prior)
           c1 <- coda.samples(m1, variable.names=(c('alpha')),
                              n.iter=10000, thin=10)
           s1 <- summary(c1)
           effs <- s1$statistics[,'Mean']
           # Perfect match (different order?)
           rev(sort(round(effs - mean(effs), 2))) 
           }

         ## End(Not run)
