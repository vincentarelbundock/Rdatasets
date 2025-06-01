.. container::

   .. container::

      ============= ===============
      vargas.wheat1 R Documentation
      ============= ===============

      .. rubric:: Wheat yields in 7 years with genetic and environment
         covariates
         :name: wheat-yields-in-7-years-with-genetic-and-environment-covariates

      .. rubric:: Description
         :name: description

      Yield of Durum wheat, 7 genotypes, 6 years, with 16 genotypic
      variates and 16 environment variates.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("vargas.wheat1.covs")
         data("vargas.wheat1.traits")

      .. rubric:: Format
         :name: format

      The ``vargas.wheat1.covs`` dataframe has 6 observations on the
      following 17 variables.

      ``year``
         year, 1990-1995

      ``MTD``
         Mean daily max temperature December, deg C

      ``MTJ``
         Mean max in January

      ``MTF``
         Mean max in February

      ``MTM``
         Mean max in March

      ``mTD``
         Mean daily minimum temperature December, deg C

      ``mTJ``
         Mean min in January

      ``mTF``
         Mean min in February

      ``mTM``
         Mean min in March

      ``PRD``
         Monthly precipitation in December, mm

      ``PRJ``
         Precipitation in January

      ``PRF``
         Precipitation in February

      ``PRM``
         Precipitation in March

      ``SHD``
         Sun hours in December

      ``SHJ``
         Sun hours in January

      ``SHF``
         Sun hours in February

      ``SHM``
         Sun hours in March

      The ``vargas.wheat1.traits`` dataframe has 126 observations on the
      following 19 variables.

      ``year``
         year, 1990-1995

      ``rep``
         replicate, 3 levels

      ``gen``
         genotype, 7 levels

      ``yield``
         yield, kg/ha

      ``ANT``
         anthesis, days after emergence

      ``MAT``
         maturity, days after emergence

      ``GFI``
         grainfill, MAT-ANT

      ``PLH``
         plant height, cm

      ``BIO``
         biomass above ground, kg/ha

      ``HID``
         harvest index

      ``STW``
         straw yield, kg/ha

      ``NSM``
         spikes / m^2

      ``NGM``
         grains / m^2

      ``NGS``
         grains per spike

      ``TKW``
         thousand kernel weight, g

      ``WTI``
         weight per tiller, g

      ``SGW``
         spike grain weight, g

      ``VGR``
         vegetative growth rate, kg/ha/day, STW/ANT

      ``KGR``
         kernel growth rate, mg/kernel/day

      .. rubric:: Details
         :name: details

      Conducted in Ciudad Obregon, Mexico.

      .. rubric:: Source
         :name: source

      Mateo Vargas and Jose Crossa and Ken Sayre and Matthew Renolds and
      Martha E Ramirez and Mike Talbot, 1998. Interpreting Genotype x
      Environment Interaction in Wheat by Partial Least Squares
      Regression. Crop Science, 38, 679-689.
      https://doi.org/10.2135/cropsci1998.0011183X003800030010x

      Data provided by Jose Crossa.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
           data(vargas.wheat1.covs)
           data(vargas.wheat1.traits)

           libs(pls)
           libs(reshape2)

           # Yield as a function of non-yield traits
           Y0 <- vargas.wheat1.traits[,c('gen','rep','year','yield')]
           Y0 <- acast(Y0, gen ~ year, value.var='yield', fun=mean)
           Y0 <- sweep(Y0, 1, rowMeans(Y0))
           Y0 <- sweep(Y0, 2, colMeans(Y0)) # GxE residuals
           Y1 <- scale(Y0) # scaled columns
           X1 <- vargas.wheat1.traits[, -4] # omit yield
           X1 <- aggregate(cbind(ANT,MAT,GFI,PLH,BIO,HID,STW,NSM,NGM,
                                 NGS,TKW,WTI,SGW,VGR,KGR) ~ gen, data=X1, FUN=mean)
           rownames(X1) <- X1$gen
           X1$gen <- NULL
           X1 <- scale(X1) # scaled columns
           m1 <- plsr(Y1~X1)
           loadings(m1)[,1,drop=FALSE] # X loadings in Table 1 of Vargas

           biplot(m1, cex=.5, which="x", var.axes=TRUE,
                  main="vargas.wheat1 - gen ~ trait") # Vargas figure 2a

           # Yield as a function of environment covariates
           Y2 <- t(Y0)
           X2 <- vargas.wheat1.covs
           rownames(X2) <- X2$year
           X2$year <- NULL
           Y2 <- scale(Y2)
           X2 <- scale(X2)

           m2 <- plsr(Y2~X2)
           loadings(m2)[,1,drop=FALSE] # X loadings in Table 2 of Vargas

         ## End(Not run)
