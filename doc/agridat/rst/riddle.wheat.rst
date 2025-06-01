.. container::

   .. container::

      ============ ===============
      riddle.wheat R Documentation
      ============ ===============

      .. rubric:: Modified Latin Square experiments of wheat
         :name: modified-latin-square-experiments-of-wheat

      .. rubric:: Description
         :name: description

      Modified Latin Square experiments of wheat for two varieties and 2
      years

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("riddle.wheat")

      .. rubric:: Format
         :name: format

      A data frame with 650 observations on the following 7 variables.

      ``expt``
         experiment

      ``strain``
         strain

      ``rep``
         replicate

      ``row``
         row (nested in column)

      ``year``
         year

      ``yield``
         yield, grams

      ``col``
         column (group of rows)

      .. rubric:: Details
         :name: details

      There was an experiment for "Baart" varieties in 1939 and another
      experiment for "White Federation" varieties in 1939. The
      experiments were repeated in 1940.

      The experimental design is a Modified Latin Square. There are 5
      reps, horizontal. There are 5 "columns". Each rep*column contains
      multiple plots Each strain is planted in a 16-foot row.

      Field length: 5 reps \* 16 feet

      Field width: 25 or 30 rows, perhaps 0.5 feet between rows

      Riddle & Baker note: Two strains, 5129 (Baart) and 1617 (White
      Federation) reversed their position from significantly LOWER in
      1939 to significantly HIGHER than the general mean in 1940.

      .. rubric:: Source
         :name: source

      Riddle, O. C. and G. A. Baker. (1944). Biases encountered in
      large-scale yield tests. Hilgardia, 16, 1-14.
      https://doi.org/10.3733/hilg.v16n01p001

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           data(riddle.wheat)
           dat <- riddle.wheat

           datb39 <- subset(dat, expt=="Baart" & year==1939)
           datb40 <- subset(dat, expt=="Baart" & year==1940)
           datw39 <- subset(dat, expt=="WhiteFed" & year==1939)
           datw40 <- subset(dat, expt=="WhiteFed" & year==1940)
           # Match table 4, sections a, b, d, e
           anova(aov(yield ~ factor(rep) + factor(col) + strain, datb39))
           anova(aov(yield ~ factor(rep) + factor(col) + strain, datb40))
           anova(aov(yield ~ factor(rep) + factor(col) + strain, datw39))
           anova(aov(yield ~ factor(rep) + factor(col) + strain, datw40))

           libs(desplot)
           # Show the huge variaion between reps
           dat$yrexpt <- paste0(dat$year, dat$expt)
           desplot(dat, yield ~ row*rep|yrexpt, tick=TRUE, out1=col, main="riddle.wheat",
                   aspect=(5*16)/(30*.5))
         # Show the randomization was the same in each year (but not each expt).
         desplot(dat, strain ~ row*rep|yrexpt, tick=TRUE, out1=col, main="riddle.wheat")


         ## End(Not run)
