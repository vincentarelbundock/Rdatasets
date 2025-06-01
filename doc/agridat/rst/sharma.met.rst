.. container::

   .. container::

      ========== ===============
      sharma.met R Documentation
      ========== ===============

      .. rubric:: Multi-environment trial
         :name: multi-environment-trial

      .. rubric:: Description
         :name: description

      Multi-environment trial

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("sharma.met")

      .. rubric:: Format
         :name: format

      A data frame with 126 observations on the following 5 variables.

      ``gen``
         genotype

      ``loc``
         location

      ``year``
         year

      ``rep``
         replicate

      ``yield``
         yield

      .. rubric:: Details
         :name: details

      Yield of 7 genotypes, 3 years, 2 locations per year, 3 replicates.

      Might be simulated data.

      .. rubric:: Source
         :name: source

      Jawahar R. Sharma. 1988. Statistical and Biometrical Techniques in
      Plant Breeding. New Age International Publishers.

      .. rubric:: References
         :name: references

      Andrea Onofri, 2020. Fitting complex mixed models with nlme:
      Example #5. https://www.statforbiology.com/2020/stat_met_jointreg/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           data(sharma.met)
           dat <- sharma.met
           dat$env = paste0(dat$year, dat$loc) # Define environment
           
           # Calculate environment index as loc mean - overall mean ---
           libs(dplyr)
           dat <- group_by(dat, env)
           dat <- mutate(dat, eix = mean(yield)-mean(dat$yield))
           
           libs(nlme)

          ## Finlay-Wilkinson model plot-level model ---
           m1fw <- lme(yield ~ gen/eix - 1, 
                       random = list(env = pdIdent(~ gen - 1),
                                     env = pdIdent(~ rep - 1)), 
                       data=dat)
           summary(m1fw)$tTable # Match Sharma table 9.6
           VarCorr(m1fw)
           
           ## Eberhart-Russell plot-level model ---
           # Use pdDiag to get variance for each genotype
           m1er <- lme(yield ~ gen/eix - 1, 
                       random = list(env = pdDiag(~ gen - 1),
                                     env = pdIdent(~ rep - 1)), 
                       data=dat)
           summary(m1er)$tTable # same as FW
           VarCorr(m1er) # genotype variances differ

           
           # Calculate GxE cell means and environment index ---
           dat2 <- group_by(dat, gen, env)
           dat2 <- summarize(dat2, yield=mean(yield))
           dat2 <- group_by(dat2, env)
           dat2 <- mutate(dat2, eix=mean(yield)-mean(dat2$yield))
           
           ## Finlay-Wilkinson cell-means model ---
           m2fw <- lm(yield ~ gen/eix - 1, data=dat2)
           summary(m2fw)
           
           ## Eberhart-Russell cell-means model ---
           # Note, using varIdent(form=~1) is same as FW model
           m2er <- gls(yield ~ gen/eix - 1, 
                       weights=varIdent(form=~1|gen), data=dat)
           summary(m2er)$tTable
           sigma <- summary(m2er)$sigma
           sigma2i <- (c(1, coef(m2er$modelStruct$varStruct, uncons = FALSE)) * sigma)^2
           names(sigma2i)[1] <- "A"
           sigma2i # shifted from m1er because variation from reps was swept out
           

         ## End(Not run)
