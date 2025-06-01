.. container::

   .. container::

      ============== ===============
      adugna.sorghum R Documentation
      ============== ===============

      .. rubric:: Multi-environment trial of sorghum at 3 locations
         across 5 years
         :name: multi-environment-trial-of-sorghum-at-3-locations-across-5-years

      .. rubric:: Description
         :name: description

      Multi-environment trial of sorghum at 3 locations across 5 years

      .. rubric:: Format
         :name: format

      A data frame with 289 observations on the following 6 variables.

      ``gen``
         genotype, 28 levels

      ``trial``
         trial, 2 levels

      ``env``
         environment, 13 levels

      ``yield``
         yield kg/ha

      ``year``
         year, 2001-2005

      ``loc``
         location, 3 levels

      .. rubric:: Details
         :name: details

      Sorghum yields at 3 locations across 5 years. The trials were
      carried out at three locations in dry, hot lowlands of Ethiopia:

      Melkassa (39 deg 21 min E, 8 deg 24 min N)

      Mieso (39 deg 22 min E, 8 deg 41 min N)

      Kobo (39 deg 37 min E, 12 deg 09 min N)

      Trial 1 was 14 hybrids and one open-pollinated variety.

      Trial 2 was 12 experimental lines.

      Used with permission of Asfaw Adugna.

      .. rubric:: Source
         :name: source

      Asfaw Adugna (2008). Assessment of yield stability in sorghum
      using univariate and multivariate statistical approaches.
      Hereditas, 145, 28–37.
      https://doi.org/10.1111/j.0018-0661.2008.2023.x

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(adugna.sorghum)
         dat <- adugna.sorghum

         libs(lattice)
         redblue <- colorRampPalette(c("firebrick", "lightgray", "#375997"))
         levelplot(yield ~ env*gen, data=dat, main="adugna.sorghum gxe heatmap",
                   col.regions=redblue)

         # Genotype means match Adugna
         tapply(dat$yield, dat$gen, mean)

         # CV for each genotype.  G1..G15 match, except for G2.
         # The table in Adugna scrambles the means for G16..G28
         libs(reshape2)
         mat <- acast(dat, gen~env,  value.var='yield')
         round(sqrt(apply(mat, 1, var, na.rm=TRUE)) / apply(mat, 1, mean, na.rm=TRUE) * 100,2)

         # Shukla stability.  G1..G15 match Adugna.  Can't match G16..G28.
         dat1 <- droplevels(subset(dat, trial=="T1"))
         mat1 <- acast(dat1, gen~env,  value.var='yield')
         w <- mat1; k=15; n=8  # k=p gen, n=q env
         w <- sweep(w, 1, rowMeans(mat1, na.rm=TRUE))
         w <- sweep(w, 2, colMeans(mat1, na.rm=TRUE))
         w <- w + mean(mat1, na.rm=TRUE)
         w <- rowSums(w^2, na.rm=TRUE)
         sig2 <- k*w/((k-2)*(n-1)) - sum(w)/((k-1)*(k-2)*(n-1))
         round(sig2/10000,1) # Genotypes in T1 are divided by 10000

         ## End(Not run)
