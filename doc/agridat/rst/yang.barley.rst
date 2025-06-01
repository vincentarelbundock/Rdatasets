.. container::

   .. container::

      =========== ===============
      yang.barley R Documentation
      =========== ===============

      .. rubric:: Multi-environment trial of barley in Alberta, 6
         varieties at 18 locations in Alberta.
         :name: multi-environment-trial-of-barley-in-alberta-6-varieties-at-18-locations-in-alberta.

      .. rubric:: Description
         :name: description

      Yield of 6 barley varieties at 18 locations in Alberta.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("yang.barley")

      .. rubric:: Format
         :name: format

      A data frame with 108 observations on the following 3 variables.

      ``site``
         site factor, 18 levels

      ``gen``
         genotype factor, 6 levels

      ``yield``
         yield, Mg/ha

      .. rubric:: Details
         :name: details

      From an experiment in 2003. Yang (2013) uses this data to
      illustrate a procedure for bootstrapping biplots.

      =============== ====== =====
      site            long   lat
      Beaverlodge     119.43 55.21
      BigLakes        113.70 53.61
      Calmar          113.85 53.26
      CdcNorth        113.33 53.63
      DawsonCreek     120.23 55.76
      FtKent          110.61 54.31
      FtStJohn        120.85 56.25
      Irricana        113.60 51.32
      Killam          111.85 52.78
      Lacombe         113.73 52.46
      LethbridgeDry   112.81 49.70
      LethbridgeIrr   112.81 49.70
      Lomond          112.65 50.35
      Neapolis        113.86 51.65
      NorthernSunrise NA     NA
      Olds            114.09 51.78
      StPaul          111.28 53.98
      Stettler        112.71 52.31
      =============== ====== =====

      Used with permission of Rong-Cai Yang.

      .. rubric:: Source
         :name: source

      Rong-Cai Yang (2007). Mixed-Model Analysis of Crossover
      Genotype-Environment Interactions. Crop Science, 47, 1051-1062.
      https://doi.org/10.2135/cropsci2006.09.0611

      .. rubric:: References
         :name: references

      Zhiqiu Hu and Rong-Cai Yang, (2013). Improved Statistical
      Inference for Graphical Description and Interpretation of Genotype
      x Environment Interaction. Crop Science, 53, 2400-2410.
      https://doi.org/10.2135/cropsci2013.04.0218

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(yang.barley)
         dat <- yang.barley

         libs(reshape2)
         dat <- acast(dat, gen~site, value.var='yield')

           ## For bootstrapping of a biplot, see the non-cran packages:
           ## 'bbplot' and 'distfree.cr'
           ## https://statgen.ualberta.ca/index.html?open=software.html
           ## install.packages("https://statgen.ualberta.ca/download/software/bbplot_1.0.zip")
           ## install.packages("https://statgen.ualberta.ca/download/software/distfree.cr_1.5.zip")

           ## libs(SDMTools)
           ## libs(distfree.cr)
           ## libs(bbplot)

           ## d1 <- bbplot.boot(dat, nsample=2000) # bootstrap the data
           ## plot(d1) # plot distributions of principal components
           ## b1 <- bbplot(d1) # create data structures for the biplot
           ## plot(b1) # create the confidence regions on the biplot


         ## End(Not run)
