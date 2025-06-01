.. container::

   .. container::

      ================== ===============
      belamkar.augmented R Documentation
      ================== ===============

      .. rubric:: Multi-environment trial of wheat with Augmented design
         :name: multi-environment-trial-of-wheat-with-augmented-design

      .. rubric:: Description
         :name: description

      Multi-environment trial of wheat in Nebraska with Augmented design

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("belamkar.augmented")

      .. rubric:: Format
         :name: format

      A data frame with 2700 observations on the following 9 variables.

      ``loc``
         location

      ``rep``
         replicate

      ``iblock``
         incomplete block

      ``gen_new``
         new genotype (1=yes, 0=no)

      ``gen_check``
         check genotype (0=no)

      ``gen``
         genotype name

      ``col``
         column ordinate

      ``row``
         row ordinate

      ``yield``
         yield, bu/ac

      .. rubric:: Details
         :name: details

      The experiment had 8 locations with 270 new, experimental lines
      (genotypes) and 3 check lines. There were 10 incomplete blocks at
      each location. There were 2 replicate blocks at Alliance and 1
      block at all other locations. Each plot was 3 m long by 1.2 m
      wide.

      The electronic data were found in supplement S4 downloaded from
      https://doi.org/10.25387/g3.6249410 The license for the data is
      CC-BY 4.0.

      .. rubric:: Source
         :name: source

      Vikas Belamkar, Mary J. Guttieri, Waseem Hussain, Diego Jarquín,
      Ibrahim El-basyoni, Jesse Poland, Aaron J. Lorenz, P. Stephen
      Baenziger (2018). Genomic Selection in Preliminary Yield Trials in
      a Winter Wheat Breeding Program. G3 Genes|Genomes|Genetics, 8,
      Pages 2735–2747. https://doi.org/10.1534/g3.118.200415

      .. rubric:: References
         :name: references

      Same data appear in ASRtriala package:
      https://vsni.co.uk/free-software/asrtriala

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           data(belamkar.augmented)
           dat <- belamkar.augmented

           libs(desplot)
           desplot(dat, yield ~ col*row|loc, out1=rep, out2=iblock)
           # Experiment design showing check placement
           dat$gen_check <- factor(dat$gen_check)
           desplot(dat, gen_check ~ col*row|loc, out1=rep, out2=iblock,
                   main="belamkar.augmented")

           # Belamkar supplement S3 has R code for analysis
           if(require("asreml", quietly=TRUE)){
             library(asreml)

             # AR1xAR1 model to calculate BLUEs for a single loc
             d1 <- droplevels(subset(dat, loc=="Lincoln"))
             d1$colf <- factor(d1$col)
             d1$rowf <- factor(d1$row)
             d1$gen <- factor(d1$gen)
             d1$gen_check <- factor(d1$gen_check)
             d1 <- d1[order(d1$col),]
             d1 <- as.data.frame(d1)
             m1 <- asreml(fixed=yield ~ gen_check, data=d1,
                          random = ~ gen_new:gen,
                          residual = ~ar1(colf):ar1v(rowf) )
             p1 <- predict(m1, classify="gen")
             head(p1$pvals)
           }

         ## End(Not run)
