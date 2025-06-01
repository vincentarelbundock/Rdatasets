.. container::

   .. container::

      =============== ===============
      aastveit.barley R Documentation
      =============== ===============

      .. rubric:: Barley heights and environmental covariates in Norway
         :name: barley-heights-and-environmental-covariates-in-norway

      .. rubric:: Description
         :name: description

      Average height for 15 genotypes of barley in each of 9 years. Also
      19 covariates in each of the 9 years.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("aastveit.barley.covs")
         data("aastveit.barley.height")

      .. rubric:: Format
         :name: format

      The 'aastveit.barley.covs' dataframe has 9 observations on the
      following 20 variables.

      ``year``
         year

      ``R1``
         avg rainfall (mm/day) in period 1

      ``R2``
         avg rainfall (mm/day) in period 2

      ``R3``
         avg rainfall (mm/day) in period 3

      ``R4``
         avg rainfall (mm/day) in period 4

      ``R5``
         avg rainfall (mm/day) in period 5

      ``R6``
         avg rainfall (mm/day) in period 6

      ``S1``
         daily solar radiation (ca/cm^2) in period 1

      ``S2``
         daily solar radiation (ca/cm^2) in period 2

      ``S3``
         daily solar radiation (ca/cm^2) in period 3

      ``S4``
         daily solar radiation (ca/cm^2) in period 4

      ``S5``
         daily solar radiation (ca/cm^2) in period 5

      ``S6``
         daily solar radiation (ca/cm^2) in period 6

      ``ST``
         sowing time, measured in days after April 1

      ``T1``
         avg temp (deg Celsius) in period 1

      ``T2``
         avg temp (deg Celsius) in period 2

      ``T3``
         avg temp (deg Celsius) in period 3

      ``T4``
         avg temp (deg Celsius) in period 4

      ``T5``
         avg temp (deg Celsius) in period 5

      ``T6``
         avg temp (deg Celsius) in period 6

      The 'aastveit.barley.height' dataframe has 135 observations on the
      following 3 variables.

      ``year``
         year, 9 years spanning from 1974 to 1982

      ``gen``
         genotype, 15 levels

      ``height``
         height (cm)

      .. rubric:: Details
         :name: details

      Experiments were conducted at As, Norway.

      The ``height`` dataframe contains average plant height (cm) of 15
      varieties of barley in each of 9 years.

      The growth season of each year was divided into eight periods from
      sowing to harvest. Because the plant stop growing about 20 days
      after ear emergence, only the first 6 periods are included here.

      Used with permission of Harald Martens.

      .. rubric:: Source
         :name: source

      Aastveit, A. H. and Martens, H. (1986). ANOVA interactions
      interpreted by partial least squares regression. Biometrics, 42,
      829–844. https://doi.org/10.2307/2530697

      .. rubric:: References
         :name: references

      J. Chadoeuf and J. B. Denis (1991). Asymptotic variances for the
      multiplicative interaction model. J. App. Stat., 18, 331-353.
      https://doi.org/10.1080/02664769100000032

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data("aastveit.barley.covs")
         data("aastveit.barley.height")

         libs(reshape2, pls)
           
           # First, PCA of each matrix separately

           Z <- acast(aastveit.barley.height, year ~ gen, value.var="height")
           Z <- sweep(Z, 1, rowMeans(Z))
           Z <- sweep(Z, 2, colMeans(Z)) # Double-centered
           sum(Z^2)*4 # Total SS = 10165
           sv <- svd(Z)$d
           round(100 * sv^2/sum(sv^2),1) # Prop of variance each axis
           # Aastveit Figure 1.  PCA of height
           biplot(prcomp(Z),
                  main="aastveit.barley - height", cex=0.5)
           
           U <- aastveit.barley.covs
           rownames(U) <- U$year
           U$year <- NULL
           U <- scale(U) # Standardized covariates
           sv <- svd(U)$d
           # Proportion of variance on each axis
           round(100 * sv^2/sum(sv^2),1)

           # Now, PLS relating the two matrices
           m1 <- plsr(Z~U)
           loadings(m1)
           # Aastveit Fig 2a (genotypes), but rotated differently
           biplot(m1, which="y", var.axes=TRUE)
           # Fig 2b, 2c (not rotated)
           biplot(m1, which="x", var.axes=TRUE)

           # Adapted from section 7.4 of Turner & Firth,
           # "Generalized nonlinear models in R: An overview of the gnm package"
           # who in turn reproduce the analysis of Chadoeuf & Denis (1991),
           # "Asymptotic variances for the multiplicative interaction model"

           libs(gnm)
           dath <- aastveit.barley.height
           dath$year = factor(dath$year)

           set.seed(42)
           m2 <- gnm(height ~ year + gen + Mult(year, gen), data = dath)
           # Turner: "To obtain parameterization of equation 1, in which sig_k is the
           # singular value for component k, the row and column scores must be constrained
           # so that the scores sum to zero and the squared scores sum to one.
           # These contrasts can be obtained using getContrasts"
           gamma <- getContrasts(m2, pickCoef(m2, "[.]y"),
                                 ref = "mean", scaleWeights = "unit")
           delta <- getContrasts(m2, pickCoef(m2, "[.]g"),
                                 ref = "mean", scaleWeights = "unit")
           # estimate & std err
           gamma <- gamma$qvframe
           delta <- delta$qvframe
           # change sign of estimate
           gamma[,1] <- -1 * gamma[,1]
           delta[,1] <- -1 * delta[,1]
           # conf limits based on asymptotic normality, Chadoeuf table 8, p. 350, 
           round(cbind(gamma[,1], gamma[, 1] +
                                    outer(gamma[, 2], c(-1.96, 1.96))) ,3)  
           round(cbind(delta[,1], delta[, 1] +
                                    outer(delta[, 2], c(-1.96, 1.96))) ,3)

         ## End(Not run)
