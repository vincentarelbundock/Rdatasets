.. container::

   .. container::

      ============= ===============
      fisher.barley R Documentation
      ============= ===============

      .. rubric:: Multi-environment trial of 5 barley varieties, 6
         locations, 2 years
         :name: multi-environment-trial-of-5-barley-varieties-6-locations-2-years

      .. rubric:: Description
         :name: description

      Multi-environment trial of 5 barley varieties, 6 locations, 2
      years

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("fisher.barley")

      .. rubric:: Format
         :name: format

      A data frame with 60 observations on the following 4 variables.

      ``yield``
         yield, bu/ac

      ``gen``
         genotype/variety, 5 levels

      ``env``
         environment/location, 2 levels

      ``year``
         year, 1931/1932

      .. rubric:: Details
         :name: details

      Trials of 5 varieties of barley were conducted at 6 stations in
      Minnesota during the years 1931-1932.

      This is a subset of Immer's barley data. The yield values here are
      totals of 3 reps (Immer gave the average yield of 3 reps).

      .. rubric:: Source
         :name: source

      Ronald Fisher (1935). *The Design of Experiments*.

      .. rubric:: References
         :name: references

      George Fernandez (1991). Analysis of Genotype x Environment
      Interaction by Stability Estimates. Hort Science, 26, 947-950.

      F. Yates & W. G. Cochran (1938). The Analysis of Groups of
      Experiments. Journal of Agricultural Science, 28, 556-580, table
      1. https://doi.org/10.1017/S0021859600050978

      G. K. Shukla, 1972. Some statistical aspects of partitioning of
      genotype-environmental components of variability. Heredity, 29,
      237-245. Table 1. https://doi.org/10.1038/hdy.1972.87

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(fisher.barley)
           dat <- fisher.barley

           libs(dplyr,lattice)
           # Yates 1938 figure 1. Regression on env mean
           # Sum years within loc
           dat2 <- aggregate(yield ~ gen + env, data=dat, FUN=sum)
           # Avg within env
           emn <- aggregate(yield ~ env, data=dat2, FUN=mean)
           dat2$envmn <- emn$yield[match(dat2$env, emn$env)]
           xyplot(yield ~ envmn, dat2, group=gen, type=c('p','r'),
                  main="fisher.barley - stability regression",
                  xlab="Environment total", ylab="Variety mean",
                  auto.key=list(columns=3))


           # calculate stability according to the sum-of-squares approach used by
           # Shukla (1972), eqn 11. match to Shukla, Table 4, M.S. column
           # also matches fernandez, table 3, stabvar column
           libs(dplyr)
           dat2 <- dat
           dat2 <- group_by(dat2, gen,env)
           dat2 <- summarize(dat2, yield=sum(yield)) # means across years
           dat2 <- group_by(dat2, env)
           dat2 <- mutate(dat2, envmn=mean(yield)) # env means
           dat2 <- group_by(dat2, gen)
           dat2 <- mutate(dat2, genmn=mean(yield)) # gen means
           dat2 <- ungroup(dat2)
           dat2 <- mutate(dat2, grandmn=mean(yield)) # grand mean
           # correction factor overall
           dat2 <- mutate(dat2, cf = sum((yield - genmn - envmn + grandmn)^2))
           t=5; s=6 # t genotypes, s environments
           dat2 <- group_by(dat2, gen)
           dat2 <- mutate(dat2, ss=sum((yield-genmn-envmn+grandmn)^2))
           # divide by 6 to scale down to plot-level
           dat2 <- mutate(dat2, sig2i = 1/((s-1)*(t-1)*(t-2)) * (t*(t-1)*ss-cf)/6)
           dat2[!duplicated(dat2$gen),c('gen','sig2i')]    
           ##       <chr>     <dbl>
           ## 1 Manchuria  25.87912
           ## 2  Peatland  75.68001
           ## 3  Svansota  19.59984
           ## 4     Trebi 225.52866
           ## 5    Velvet  22.73051

           if(require("asreml", quietly=TRUE)) {
             # mixed model approach gives similar results (but not identical)
             libs(asreml,lucid)

             dat2 <- dat
             dat2 <- dplyr::group_by(dat2, gen,env)
             dat2 <- dplyr::summarize(dat2, yield=sum(yield)) # means across years
             dat2 <- dplyr::arrange(dat2, gen)
             
             # G-side
             m1g <- asreml(yield ~ gen, data=dat2,
                           random = ~ env + at(gen):units,
                           family=asr_gaussian(dispersion=1.0))
             m1g <- update(m1g)
             summary(m1g)$varcomp[-1,1:2]/6
             #                            component std.error
             # at(gen, Manchuria):units  33.8145031  27.22721
             # at(gen, Peatland):units   70.4489092  50.52680
             # at(gen, Svansota):units   25.2728568  21.92919
             # at(gen, Trebi):units     231.6981702 150.80464
             # at(gen, Velvet):units     13.9325646  16.58571
             # units!R                    0.1666667        NA
             
             # R-side estimates = G-side estimate + 0.1666 (resid variance)
             m1r <- asreml(yield ~ gen, data=dat2,
                           random = ~ env,
                           residual = ~ dsum( ~ units|gen))
             m1r <- update(m1r)
             summary(m1r)$varcomp[-1,1:2]/6
             #                     component std.error
             # gen_Manchuria!R  34.00058  27.24871
             # gen_Peatland!R   70.65501  50.58925
             # gen_Svansota!R   25.42022  21.88606
             # gen_Trebi!R     231.85846 150.78756
             # gen_Velvet!R     14.08405  16.55558
           }
           

         ## End(Not run)
