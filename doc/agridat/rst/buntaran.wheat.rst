.. container::

   .. container::

      ============== ===============
      buntaran.wheat R Documentation
      ============== ===============

      .. rubric:: Multi-environment trial of wheat in Sweden in 2016.
         :name: multi-environment-trial-of-wheat-in-sweden-in-2016.

      .. rubric:: Description
         :name: description

      Multi-environment trial of wheat in Sweden in 2016.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("buntaran.wheat")

      .. rubric:: Format
         :name: format

      A data frame with 1069 observations on the following 7 variables.

      ``zone``
         Geographic zone: south, middle, north

      ``loc``
         Location

      ``rep``
         Block replicate (up to 4)

      ``alpha``
         Incomplete-block in the alpha design

      ``gen``
         Genotype (cultivar)

      ``yield``
         Dry matter yield, kg/ha

      .. rubric:: Details
         :name: details

      Dry matter yield from wheat trials in Sweden in 2016. The
      experiments in each location were multi-rep with incomplete blocks
      in an alpha design.

      Electronic data are from the online supplement of Buntaran (2020)
      and also from the "init" package at
      https://github.com/Flavjack/inti.

      .. rubric:: Source
         :name: source

      Buntaran, Harimurti et al. (2020). Cross-validation of stagewise
      mixed-model analysis of Swedish variety trials with winter wheat
      and spring barley. Crop Science, 60, 2221-2240.
      http://doi.org/10.1002/csc2.20177

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
         data(buntaran.wheat)
         library(agridat)
         dat <- buntaran.wheat
         library(lattice)
         bwplot(yield~loc|zone, dat, layout=c(1,3),
                scales=list(x=list(rot=90)),
                main="buntaran.wheat")

         ## End(Not run)
