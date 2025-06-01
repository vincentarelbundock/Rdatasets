.. container::

   .. container::

      ========== ===============
      vargas.txe R Documentation
      ========== ===============

      .. rubric:: Treatment x environment interaction in agronomy trials
         :name: treatment-x-environment-interaction-in-agronomy-trials

      .. rubric:: Description
         :name: description

      Treatment x environment interaction in agronomy trials

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("vargas.txe.covs")
         data("vargas.txe.yield")

      .. rubric:: Format
         :name: format

      The 'vargas.txe.covs' data has 10 years of measurements on 28
      environmental covariates:

      ``year``
         year

      ``MTD``
         mean maximum temperature in December

      ``MTJ``
         mean maximum temperature in January

      ``MTF``
         mean maximum temperature in February

      ``MTM``
         mean maximum temperature in March

      ``MTA``
         mean maximum temperature in April

      ``mTD``
         mean minimum temperature in December

      ``mTJ``
         mean minimum temperature in January

      ``mTF``
         mean minimum temperature in February

      ``mTM``
         mean minimum temperature in March

      ``mTA``
         mean minimum temperature in April

      ``mTUD``
         mean minimum temperature in December

      ``mTUJ``
         mean minimum temperature in January

      ``mTUF``
         mean minimum temperature in February

      ``mTUM``
         mean minimum temperature in March

      ``mTUA``
         mean minimum temperature in April

      ``PRD``
         total monthly precipitation in December

      ``PRJ``
         total monthly precipitation in Jan

      ``PRF``
         total monthly precipitation in Feb

      ``PRM``
         total monthly precipitation in Mar

      ``SHD``
         sun hours per day in Dec

      ``SHJ``
         sun hours per day in Jan

      ``SHF``
         sun hours per day in Feb

      ``EVD``
         total monthly evaporation in Dec

      ``EVJ``
         total monthly evaporation in Jan

      ``EVF``
         total monthly evaporation in Feb

      ``EVM``
         total monthly evaporation in Mar

      ``EVA``
         total monthly evaporation in Apr

      The 'vargas.txe.yield' dataframe contains 240 observations on
      three variables

      ``year``
         Year

      ``trt``
         Treatment. See details section

      ``yield``
         Grain yield, kg/ha

      .. rubric:: Details
         :name: details

      The treatment names indicate:

      == ==================
      T  deep knife
      t  no deep knife
      S  sesbania
      s  soybean
      M  chicken manure
      m  no chicken manure
      0  no nitrogen
      n  100 kg/ha nitrogen
      N  200 kg/ha nitrogen
      \  
      == ==================

      Used with permission of Jose Crossa.

      .. rubric:: Source
         :name: source

      Vargas, Mateo and Crossa, Jose and van Eeuwijk, Fred and Sayre,
      Kenneth D. and Reynolds, Matthew P. (2001). Interpreting Treatment
      x Environment Interaction in Agronomy Trials. Agron. J., 93,
      949-960. Table A1, A3. https://doi.org/10.2134/agronj2001.934949x

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(vargas.txe.covs)
           data(vargas.txe.yield)
           
           libs(reshape2)
           libs(lattice)
           redblue <- colorRampPalette(c("firebrick", "lightgray", "#375997"))
           Z <- vargas.txe.yield
           Z <- acast(Z, year ~ trt, value.var='yield')
           levelplot(Z, col.regions=redblue,
                     main="vargas.txe.yield", xlab="year", ylab="treatment",
                     scales=list(x=list(rot=90)))
           
           # Double-centered like AMMI
           Z <- sweep(Z, 1, rowMeans(Z))
           Z <- sweep(Z, 2, colMeans(Z))
           # Vargas figure 1
           biplot(prcomp(Z, scale.=FALSE), main="vargas.txe.yield")

           # Now, PLS relating the two matrices
           U <- vargas.txe.covs
           U <- scale(U) # Standardized covariates
           libs(pls)
           m1 <- plsr(Z~U)
           # Vargas Fig 2, flipped vertical/horizontal
           biplot(m1, which="x", var.axes=TRUE)


         ## End(Not run)
