.. container::

   .. container::

      =========== ===============
      huehn.wheat R Documentation
      =========== ===============

      .. rubric:: Multi-environment trial of wheat to illustrate
         stability statistics
         :name: multi-environment-trial-of-wheat-to-illustrate-stability-statistics

      .. rubric:: Description
         :name: description

      Multi-environment trial to illustrate stability statistics

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("huehn.wheat")

      .. rubric:: Format
         :name: format

      A data frame with 200 observations on the following 3 variables.

      ``gen``
         genotype

      ``env``
         environment

      ``yield``
         yield dt/ha

      .. rubric:: Details
         :name: details

      Yields for a winter-wheat trial of 20 genotypes at 10
      environments.

      Note: Huehn 1979 does not use genotype-centered data when
      calculating stability statistics.

      .. rubric:: Source
         :name: source

      Manfred Huehn (1979). Beitrage zur Erfassung der phanotypischen
      Stabilitat I. Vorschlag einiger auf Ranginformationen beruhenden
      Stabilitatsparameter. *EDV in Medizin und Biologie*, 10 (4),
      112-117. Table 1.
      https://nbn-resolving.de/urn:nbn:de:bsz:15-qucosa-145979

      .. rubric:: References
         :name: references

      Nassar, R and Huehn, M. (1987). Studies on estimation of
      phenotypic stability: Tests of significance for nonparametric
      measures of phenotypic stability. *Biometrics*, 43, 45-53.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(huehn.wheat)
           dat <- huehn.wheat
           
           # Nassar & Huehn, p. 51 "there is no evidence for differences in stability
           # among the 20 varieties".
           libs(gge)
           m1 <- gge(dat, yield ~ gen*env)
           biplot(m1, main="huehn.wheat")
           
           libs(reshape2)
           datm <- acast(dat, gen~env, value.var='yield')

           apply(datm,1,mean) # Gen means match Huehn 1979 table 1
           apply(datm,2,mean) # Env means
           apply(datm, 2, rank) # Ranks match Huehn table 1

           # Huehn 1979 did not use genotype-centered data, and his definition
           # of S2 is different from later papers.

           # I'm not sure where 'huehn' function is found
           # apply(huehn(datm, corrected=FALSE), 2, round,2) # S1 matches Huehn
           ##          MeanRank   S1
           ## Jubilar      6.70 3.62
           ## Diplomat     8.35 5.61
           ## Caribo      11.20 6.07
           ## Cbc710      13.65 6.70

           # Very close match to Nassar & Huehn 1987 table 4.
           # apply(huehn(datm, corrected=TRUE), 2, round,2)
           ##          MeanRank   S1   Z1    S2   Z2
           ## Jubilar      10.2 4.00 5.51 11.29 4.29
           ## Diplomat     11.0 6.31 0.09 27.78 0.27
           ## Caribo       10.6 6.98 0.08 34.49 0.01
           ## Cbc710       10.9 8.16 1.78 47.21 1.73


         ## End(Not run)
