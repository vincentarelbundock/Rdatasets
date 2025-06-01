.. container::

   .. container::

      ============= ===============
      denis.missing R Documentation
      ============= ===============

      .. rubric:: Multi-environment trial with structured missing values
         :name: multi-environment-trial-with-structured-missing-values

      .. rubric:: Description
         :name: description

      Grain yield was measured on 5 genotypes in 26 environments.
      Missing values were non-random, but structured.

      .. rubric:: Format
         :name: format

      ``env``
         environment, 26 levels

      ``gen``
         genotype factor, 5 levels

      ``yield``
         yield

      Used with permission of Jean-Baptists Denis.

      .. rubric:: Source
         :name: source

      Denis, J. B. and C P Baril, 1992, Sophisticated models with
      numerous missing values: The multiplicative interaction model as
      an example. Biul. Oceny Odmian, 24–25, 7–31.

      .. rubric:: References
         :name: references

      H P Piepho, (1999) Stability analysis using the SAS system, Agron
      Journal, 91, 154–160.
      https://doi.og/10.2134/agronj1999.00021962009100010024x

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(denis.missing)
         dat <- denis.missing

         # view missingness structure
         libs(reshape2)
         acast(dat, env~gen, value.var='yield')


         libs(lattice)
         redblue <- colorRampPalette(c("firebrick", "lightgray", "#375997"))
         levelplot(yield ~ gen*env, data=dat,
                   col.regions=redblue,
                   main="denis.missing - incidence heatmap")

         # stability variance (Table 3 in Piepho)
         libs(nlme)
         m1 <- lme(yield ~ -1 + gen, data=dat, random= ~ 1|env,
                   weights = varIdent(form= ~ 1|gen),
                   na.action=na.omit)
         svar <- m1$sigma^2 * c(1, coef(m1$modelStruct$varStruct, unc = FALSE))^2
         round(svar, 2)
         ##          G5    G3    G1    G2
         ## 39.25 22.95 54.36 12.17 23.77


         ## End(Not run)
