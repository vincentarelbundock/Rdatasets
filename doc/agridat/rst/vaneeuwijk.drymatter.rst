.. container::

   .. container::

      ==================== ===============
      vaneeuwijk.drymatter R Documentation
      ==================== ===============

      .. rubric:: Multi-environment trial of maize, dry matter content
         :name: multi-environment-trial-of-maize-dry-matter-content

      .. rubric:: Description
         :name: description

      Multi-environment trial of maize, dry matter content

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("vaneeuwijk.drymatter")

      .. rubric:: Format
         :name: format

      A data frame with 168 observations on the following 5 variables.

      ``year``
         year

      ``site``
         site, 4 levels

      ``variety``
         variety, 6 levels

      ``y``
         dry matter percent

      .. rubric:: Details
         :name: details

      Percent dry matter is given.

      Site codes are soil type classifications: SS=Southern Sand,
      CS=Central Sand, NS=Northern Sand, RC=River Clay.

      These data are a balanced subset of the data analyzed in van
      Eeuwijk, Keizer, and Bakker (1995b) and Kroonenberg, Basford, and
      Ebskamp (1995).

      Used with permission of Fred van Eeuwijk.

      .. rubric:: Source
         :name: source

      van Eeuwijk, Fred A. and Pieter M. Kroonenberg (1998).
      Multiplicative Models for Interaction in Three-Way ANOVA, with
      Applications to Plant Breeding Biometrics, 54, 1315-1333.
      https://doi.org/10.2307/2533660

      .. rubric:: References
         :name: references

      Kroonenberg, P.M., Basford, K.E. & Ebskamp, A.G.M. (1995).
      Three-way cluster and component analysis of maize variety trials.
      Euphytica, 84(1):31-42. https://doi.org/10.1007/BF01677554

      van Eeuwijk, F.A., Keizer, L.C.P. & Bakker, J.J. Van Eeuwijk.
      (1995b). Linear and bilinear models for the analysis of
      multi-environment trials: II. An application to data from the
      Dutch Maize Variety Trials Euphytica, 84(1):9-22.
      https://doi.org/10.1007/BF01677552

      Hardeo Sahai, Mario M. Ojeda. Analysis of Variance for Random
      Models, Volume 1. Page 261.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(vaneeuwijk.drymatter)
           dat <- vaneeuwijk.drymatter
           dat <- transform(dat, year=factor(year))
           dat <- transform(dat, env=factor(paste(year,site)))

           libs(HH)
           HH::interaction2wt(y ~ year+site+variety,dat,rot=c(90,0),
                              x.between=0, y.between=0,
                              main="vaneeuwijk.drymatter")

           
           # anova model
           m1 <- aov(y ~ variety+env+variety:env, data=dat)
           anova(m1) # Similar to VanEeuwijk table 2
           m2 <- aov(y ~ year*site*variety, data=dat)
           anova(m2) # matches Sahai table 5.5
           
           # variance components model
           libs(lme4)
           libs(lucid)
           m3 <- lmer(y ~ (1|year) + (1|site) + (1|variety) +
                        (1|year:site) + (1|year:variety) + (1|site:variety),
                      data=dat)
           vc(m3) # matches Sahai page 266
           ##          grp        var1 var2    vcov  sdcor
           ## year:variety (Intercept) <NA> 0.3187  0.5645
           ##    year:site (Intercept) <NA> 7.735   2.781 
           ## site:variety (Intercept) <NA> 0.03502 0.1871
           ##         year (Intercept) <NA> 6.272   2.504 
           ##      variety (Intercept) <NA> 0.4867  0.6976
           ##         site (Intercept) <NA> 6.504   2.55  
           ##     Residual        <NA> <NA> 0.8885  0.9426
           

         ## End(Not run)
