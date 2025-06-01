.. container::

   .. container::

      =============== ===============
      cullis.earlygen R Documentation
      =============== ===============

      .. rubric:: Early generation variety trial in wheat
         :name: early-generation-variety-trial-in-wheat

      .. rubric:: Description
         :name: description

      Early generation variety trial in wheat

      .. rubric:: Format
         :name: format

      A data frame with 670 observations on the following 5 variables.

      ``gen``
         genotype factor

      ``row``
         row

      ``col``
         column

      ``entry``
         entry (genotype) number

      ``yield``
         yield of each plot, kg/ha

      ``weed``
         weed score

      .. rubric:: Details
         :name: details

      The data are from a field experiment conducted at Tullibigeal, New
      South Wales, Australia in 1987-88. The aim of these trials is to
      identify and retain the top (10-20 percent) lines for further
      testing.

      Most genotypes are unreplicated, with some augmented genotypes. In
      each row, every 6th plot was variety 526 = 'Kite'. Six other
      varieties 527-532 were randomly placed in the trial, with 3 to 5
      plots of each. Each plot was 15m x 1.8m, "oriented with the
      longest side with rows".

      The 'weed' variable is a visual score on a 0 to 10 scale, 0 = no
      weeds, 10 = 100 percent weeds.

      Cullis et al. (1989) presented an analysis of early generation
      variety trials that included a one-dimensional spatial analysis.
      Below, a two-dimensional spatial analysis is presented.

      Note: The 'row' and 'col' variables are as in the VSN link below
      (switched compared to the paper by Cullis et al.)

      Field width: 10 rows \* 15 m = 150 m

      Field length: 67 plots \* 1.8 m = 121 m

      The orientation is not certain, but the alternative orientation
      would have a field roughly 20m x 1000m, which seems unlikely.

      .. rubric:: Source
         :name: source

      Brian R. Cullis, Warwick J. Lill, John A. Fisher, Barbara J. Read
      and Alan C. Gleeson (1989). A New Procedure for the Analysis of
      Early Generation Variety Trials. *Journal of the Royal Statistical
      Society. Series C (Applied Statistics)*, 38, 361-375.
      https://doi.org/10.2307/2348066

      .. rubric:: References
         :name: references

      Unreplicated early generation variety trial in Wheat.
      https://www.vsni.co.uk/software/asreml/htmlhelp/asreml/xwheat.htm

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(cullis.earlygen)
           dat <- cullis.earlygen

           # Show field layout of checks.  Cullis Table 1.
           dat$check <- ifelse(dat$entry < 8, dat$entry, NA)
           libs(desplot)
           desplot(dat, check ~ col*row,
                   num=entry, cex=0.5, flip=TRUE, aspect=121/150, # true aspect
                   main="cullis.earlygen (yield)")

           desplot(dat, yield ~ col*row,
                   num="check", cex=0.5, flip=TRUE, aspect=121/150, # true aspect
                   main="cullis.earlygen (yield)")

           grays <- colorRampPalette(c("white","#252525"))
           desplot(dat, weed ~ col*row,
                   at=0:6-0.5, col.regions=grays(7)[-1],
                   flip=TRUE, aspect=121/150, # true aspect
                   main="cullis.earlygen (weed)")

           libs(lattice)
           bwplot(yield ~ as.character(weed), dat,
                  horizontal=FALSE,
                  xlab="Weed score", main="cullis.earlygen")

           # Moving Grid
           libs(mvngGrAd)
           shape <- list(c(1),
                         c(1),
                         c(1:4),
                         c(1:4))
           # sketchGrid(10,10,20,20,shapeCross=shape, layers=1, excludeCenter=TRUE)
           m0 <- movingGrid(rows=dat$row, columns=dat$col, obs=dat$yield,
                            shapeCross=shape, layers=NULL)
           dat$mov.avg <- fitted(m0)

           if(require("asreml", quietly=TRUE)) {
             libs(asreml,lucid)

             # Start with the standard AR1xAR1 analysis
             dat <- transform(dat, xf=factor(col), yf=factor(row))
             dat <- dat[order(dat$xf, dat$yf),]
             m2 <- asreml(yield ~ weed, data=dat, random= ~gen,
                          resid = ~ ar1(xf):ar1(yf))
             
             # Variogram suggests a polynomial trend
             m3 <- update(m2, fixed= yield~weed+pol(col,-1))
             
             # Now add a nugget variance
             m4 <- update(m3, random= ~ gen + units)
             
             lucid::vc(m4)
             ##       effect component std.error z.ratio bound 
             ##          gen  73780    10420         7.1     P 0  
             ##        units  30440     8073         3.8     P 0.1
             ##     xf:yf(R)  54730    10630         5.1     P 0  
             ## xf:yf!xf!cor      0.38     0.115     3.3     U 0  
             ## xf:yf!yf!cor      0.84     0.045    19       U 0  
             
             ## # Predictions from models m3 and m4 are non-estimable.  Why?
             ## # Use model m2 for predictions
             ## predict(m2, classify="gen")$pvals
             ## ##         gen predicted.value std.error    status
             ## ## 1     Banks        2723.534  93.14719 Estimable
             ## ## 2    Eno008        2981.056 162.85241 Estimable
             ## ## 3    Eno009        2978.008 161.57129 Estimable
             ## ## 4    Eno010        2821.399 153.96943 Estimable
             ## ## 5    Eno011        2991.612 161.53507 Estimable
             
             
             ## # Compare AR1 with Moving Grid
             ## dat$ar1 <- fitted(m2)
             ## head(dat[ , c('yield','ar1','mov.avg')])
             ## ##    yield      ar1       mg
             ## ## 1   2652 2467.980 2531.998
             ## ## 11  3394 3071.681 3052.160
             ## ## 21  3148 2826.188 2807.031
             ## ## 31  3426 3026.985 3183.649
             ## ## 41  3555 3070.102 3195.910
             ## ## 51  3453 3006.352 3510.511
             ## pairs(dat[ , c('yield','ar1','mg')])
           }
           

         ## End(Not run)
