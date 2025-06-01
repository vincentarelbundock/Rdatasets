.. container::

   .. container::

      ========== ===============
      tai.potato R Documentation
      ========== ===============

      .. rubric:: Multi-environment trial of potato
         :name: multi-environment-trial-of-potato

      .. rubric:: Description
         :name: description

      Multi-environment trial of potato tuber yields

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("tai.potato")

      .. rubric:: Format
         :name: format

      A data frame with 48 observations on the following 6 variables.

      ``yield``
         yield, kg/plot

      ``gen``
         genotype code

      ``variety``
         variety name

      ``env``
         environment code

      ``loc``
         location

      ``year``
         year

      .. rubric:: Details
         :name: details

      Mean tuber yield of 8 genotypes in 3 locations over two years.
      Katahdin and Sebago are check varieties. Each location was planted
      as a 4-rep RCB design.

      In Tai's plot of the stability parameters, F5751 and Sebago were
      in the average stability area. The highest yielding genotype F6032
      had an unstable performance.

      .. rubric:: Source
         :name: source

      G.C.C. Tai, 1971. Genotypic stability analysis and its application
      to potato regional trials. Crop Sci 11, 184-190. Table 2, p. 187.
      https://doi.org/10.2135/cropsci1971.0011183X001100020006x

      .. rubric:: References
         :name: references

      George Fernandez (1991). Analysis of Genotype x Environment
      Interaction by Stability Estimates. *Hort Science*, 26, 947-950.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(tai.potato)
         dat <- tai.potato

         libs(lattice)
         dotplot(variety ~ yield|env, dat, main="tai.potato")

         # fixme - need to add tai() example

         # note, st4gi::tai assumes there are replications in the data
         # https://github.com/reyzaguirre/st4gi/blob/master/R/tai.R

         ## End(Not run)
