.. container::

   .. container::

      ================== ===============
      gilmour.serpentine R Documentation
      ================== ===============

      .. rubric:: Wheat yield in South Australia with serpentine row/col
         effects
         :name: wheat-yield-in-south-australia-with-serpentine-rowcol-effects

      .. rubric:: Description
         :name: description

      An RCB experiment of wheat in South Australia, with strong spatial
      variation and serpentine row/column effects.

      .. rubric:: Format
         :name: format

      A data frame with 330 observations on the following 5 variables.

      ``col``
         column

      ``row``
         row

      ``rep``
         replicate factor, 3 levels

      ``gen``
         wheat variety, 108 levels

      ``yield``
         yield

      .. rubric:: Details
         :name: details

      A randomized complete block experiment. There are 108 varieties in
      3 reps. Plots are 6 meters long, 0.75 meters wide, trimmed to 4.2
      meters lengths before harvest. Trimming was done by spraying the
      wheat with herbicide. The sprayer travelled in a serpentine
      pattern up and down columns. The trial was sown in a serpentine
      manner with a planter that seeds three rows at a time (Left,
      Middle, Right).

      Field width 15 columns \* 6 m = 90 m

      Field length 22 plots \* .75 m = 16.5 m

      Used with permission of Arthur Gilmour, in turn with permission
      from Gil Hollamby.

      .. rubric:: Source
         :name: source

      Arthur R Gilmour and Brian R Cullis and Arunas P Verbyla, 1997.
      Accounting for natural and extraneous variation in the analysis of
      field experiments. Journal of Agric Biol Env Statistics, 2,
      269-293.

      .. rubric:: References
         :name: references

      N. W. Galwey. 2014. Introduction to Mixed Modelling: Beyond
      Regression and Analysis of Variance. Table 10.9

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(gilmour.serpentine)
           dat <- gilmour.serpentine

           libs(desplot)
           desplot(dat, yield~ col*row,
                   num=gen, show.key=FALSE, out1=rep,
                   aspect = 16.5/90, # true aspect
                   main="gilmour.serpentine")


           # Extreme field trend.  Blocking insufficient--needs a spline/smoother
           # xyplot(yield~col, data=dat, main="gilmour.serpentine")

           if(require("asreml", quietly=TRUE)) {
           
             libs(asreml,lucid)
             
             dat <- transform(dat, rowf=factor(row), colf=factor(10*(col-8)))
             dat <- dat[order(dat$rowf, dat$colf), ] # Sort order needed by asreml
             
             # RCB
             m0 <- asreml(yield ~ gen, data=dat, random=~rep)
             
             # Add AR1 x AR1
             m1 <- asreml(yield ~ gen, data=dat,
                          resid = ~ar1(rowf):ar1(colf))
             
             # Add spline
             m2 <- asreml(yield ~ gen + col, data=dat,
                          random= ~ spl(col) + colf,
                          resid = ~ar1(rowf):ar1(colf))
           
             # Figure 4 shows serpentine spraying
             p2 <- predict(m2, data=dat, classify="colf")$pvals
             plot(p2$predicted, type='b', xlab="column number", ylab="BLUP")
           
             # Define column code (due to serpentine spraying)
             # Rhelp doesn't like double-percent modulus symbol, so compute by hand
             dat <- transform(dat, colcode = factor(dat$col-floor((dat$col-1)/4)*4 -1))
             
             m3 <- asreml(yield ~ gen + lin(colf) + colcode, data=dat,
                          random= ~ colf + rowf + spl(colf),
                          resid = ~ar1(rowf):ar1(colf))
           
             # Figure 6 shows serpentine row effects
             p3 <- predict(m3, data=dat, classify="rowf")$pvals
             plot(p3$predicted, type='l', xlab="row number", ylab="BLUP")
             text(1:22, p3$predicted, c('L','L','M','R','R','M','L','L',
                                        'M','R','R','M','L','L','M','R','R','M','L','L','M','R'))
             
             # Define row code (due to serpentine planting). 1=middle, 2=left/right
             dat <- transform(dat, rowcode = factor(row))
             levels(dat$rowcode) <- c('2','2','1','2','2','1','2','2','1',
                                      '2','2','1','2','2','1','2','2','1','2','2','1','2')
             
             m6 <- asreml(yield ~ gen + lin(colf) + colcode +rowcode, data=dat,
                          random= ~ colf + rowf + spl(col),
                          resid = ~ar1(rowf):ar1(colf))
             plot(varioGram(m6), xlim=c(0:17), ylim=c(0,11), zlim=c(0,4000),
                  main="gilmour.serpentine")
           }
           

         ## End(Not run)
