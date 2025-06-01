.. container::

   .. container::

      ============ ===============
      gomez.wetdry R Documentation
      ============ ===============

      .. rubric:: Rice yield in wet & dry seasons with nitrogen
         fertilizer treatments
         :name: rice-yield-in-wet-dry-seasons-with-nitrogen-fertilizer-treatments

      .. rubric:: Description
         :name: description

      Rice yield in wet & dry seasons with nitrogen fertilizer
      treatments

      .. rubric:: Format
         :name: format

      A data frame with 96 observations on the following 4 variables.

      ``season``
         season = wet/dry

      ``nitrogen``
         nitrogen fertilizer kg/ha

      ``rep``
         replicate

      ``yield``
         grain yield, t/ha

      .. rubric:: Details
         :name: details

      Five nitrogen fertilizer treatments were tested in 2 seasons using
      3 reps.

      Used with permission of Kwanchai Gomez.

      .. rubric:: Source
         :name: source

      Gomez, K.A. and Gomez, A.A.. 1984, Statistical Procedures for
      Agricultural Research. Wiley-Interscience. Page 318.

      .. rubric:: References
         :name: references

      Rong-Cai Yang, Patricia Juskiw. (2011). Analysis of covariance in
      agronomy and crop research. Canadian Journal of Plant Science,
      91:621-641. https://doi.org/10.4141/cjps2010-032

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(gomez.wetdry)
         dat <- gomez.wetdry

         libs(lattice)
         foo1 <- xyplot(yield ~ nitrogen|season, data=dat, 
                        group=rep,type='l',auto.key=list(columns=3),
                        ylab="yield in each season",
                        main="gomez.wetdry raw data & model")

         # Yang & Juskiw fit a quadratic model with linear and quadratic
         # contrasts using non-equal intervals of nitrogen levels.
         # This example below omits the tedious contrasts

         libs(latticeExtra, lme4)
         m1 <-lmer(yield ~ season*poly(nitrogen, 2) + (1|season:rep), data=dat)
         pdat <- expand.grid(season=c('dry','wet'),
                             nitrogen=seq(from=0,to=150,by=5))
         pdat$pred <- predict(m1, newdata=pdat, re.form= ~ 0)
         foo1 + 
           xyplot(pred ~ nitrogen|season, data=pdat, type='l',lwd=2,col="black")


         # m2 <-lmer(yield ~ poly(nitrogen, 2) + (1|season:rep), data=dat)
         # anova(m1,m2)
         ## m2: yield ~ poly(nitrogen, 2) + (1 | season:rep)
         ## m1: yield ~ season * poly(nitrogen, 2) + (1 | season:rep)
         ##    Df    AIC    BIC  logLik deviance  Chisq Chi Df Pr(>Chisq)    
         ## m2  5 86.418 93.424 -38.209   76.418                             
         ## m1  8 64.216 75.425 -24.108   48.216 28.202      3  3.295e-06 ***


         ## End(Not run)
