.. container::

   .. container::

      ================ ===============
      cochran.eelworms R Documentation
      ================ ===============

      .. rubric:: Counts of eelworms before and after fumigant
         treatments
         :name: counts-of-eelworms-before-and-after-fumigant-treatments

      .. rubric:: Description
         :name: description

      Counts of eelworms before and after fumigant treatments

      .. rubric:: Format
         :name: format

      A data frame with 48 observations on the following 7 variables.

      ``block``
         block factor, 4 levels

      ``row``
         row

      ``col``
         column

      ``fumigant``
         fumigant factor

      ``dose``
         dose, Numeric 0,1,2. Maybe should be a factor?

      ``initial``
         count of eelworms pre-treatment

      ``final``
         count of eelworms post-treatment

      ``grain``
         grain yield in pounds

      ``straw``
         straw yield in pounds

      ``weeds``
         ratio of weeds to total oats

      .. rubric:: Details
         :name: details

      A soil fumigation experiment on Spring Oats, conducted in 1935.

      Each plot is 30 links x 41.7 links, but it is not clear which side
      of the plot has a specific length.

      Treatment codes: Con = Control, Chl = Chlorodinitrobenzen, Cym =
      Cymag, Car = Carbon Disulphide jelly, See = Seekay.

      Experiment was conducted in 1935 at Rothamsted Experiment Station.
      In early March 400 grams of soil (4 x 100g) were sampled and the
      number of eelworm cysts were counted. Fumigants were added to the
      soil, oats were sown and later harvested. In October, the plots
      were again sampled and the final count of cysts recorded.

      The Rothamsted report concludes that "Car" and "Cym" produced
      higher yields, due partly to the nitrogen in the fumigant, while
      "Chl" decreased the yield. All fumigants reduced weeds. The crop
      was 'unusually weedy'. "Car" and "See" decreased the number of
      eelworm cysts in the soil.

      The original data can be found in the Rothamsted Report. The
      report notes the position of the blocks in the field were slightly
      different than shown.

      The experiment plan shown in Bailey (2008, p. 73), shows columns
      9-11 shifted slightly upward. It is not clear why.

      Thanks to U.Genschel for identifying a typo.

      .. rubric:: Source
         :name: source

      Cochran and Cox, 1950. *Experimental Designs*. Table 3.1.

      .. rubric:: References
         :name: references

      R. A. Bailey (2008). Design of Comparative Experiments. Cambridge.

      Other Experiments at Rothamsted (1936). Report For 1935,
      Rothamsted Research. pp 174 - 193.
      https://doi.org/10.23637/ERADOC-1-67

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(cochran.eelworms)
           dat <- cochran.eelworms

           libs(lattice)
           splom(dat[ , 5:10],
                 group=dat$fumigant, auto.key=TRUE,
                 main="cochran.eelworms")
           
           libs(desplot)
           desplot(dat, fumigant~col*row, text=dose, flip=TRUE, cex=2)
           
           # Very strong spatial trends
           desplot(dat, initial ~ col*row,
                   flip=TRUE, # aspect unknown
                   main="cochran.eelworms")


           # final counts are strongly related to initial counts
           libs(lattice)
           xyplot(final~initial|factor(dose), data=dat, group=fumigant,
                  main="cochran.eelworms - by dose (panel) & fumigant",
                  xlab="Initial worm count",
                  ylab="Final worm count", auto.key=list(columns=5))
           
           # One approach...log transform, use 'initial' as covariate, create 9 treatments
           dat <- transform(dat, trt=factor(paste0(fumigant, dose)))
           m1 <- aov(log(final) ~ block + trt + log(initial), data=dat)
           anova(m1)


         ## End(Not run)
