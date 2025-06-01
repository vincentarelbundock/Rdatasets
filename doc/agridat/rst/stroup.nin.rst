.. container::

   .. container::

      ========== ===============
      stroup.nin R Documentation
      ========== ===============

      .. rubric:: RCB experiment of wheat at the Nebraska Intrastate
         Nursery
         :name: rcb-experiment-of-wheat-at-the-nebraska-intrastate-nursery

      .. rubric:: Description
         :name: description

      The yield data from an advanced Nebraska Intrastate Nursery (NIN)
      breeding trial conducted at Alliance, Nebraska, in 1988/89.

      .. rubric:: Format
         :name: format

      gen
         genotype, 56 levels

      rep
         replicate, 4 levels

      yield
         yield, bu/ac

      col
         column

      row
         row

      .. rubric:: Details
         :name: details

      Four replicates of 19 released cultivars, 35 experimental wheat
      lines and 2 additional triticale lines were laid out in a 22 row
      by 11 column rectangular array of plots. The varieties were
      allocated to the plots using a randomised complete block (RCB)
      design. Each plot was sown in four rows 4.3 m long and 0.3 m
      apart. Plots were trimmed down to 2.4 m in length before harvest.
      The orientation of the plots is not clear from the paper, but the
      data in Littel et al are given in meters and make the orientation
      clear.

      Field length: 11 plots \* 4.3 m = 47.3 m

      Field width: 22 plots \* 1.2 m = 26.4 m

      All plots with missing data are coded as being gen = "Lancer".
      (For ASREML, missing plots need to be included for spatial
      analysis and the level of 'gen' needs to be one that is already in
      the data.)

      These data were first analyzed by Stroup et al (1994) and
      subsequently by Littell et al (1996, page 321), Pinheiro and Bates
      (2000, page 260), and Butler et al (2004).

      This version of the data give the yield in bushels per acre. The
      yield values published in Stroup et al (1994) are expressed in
      kg/ha. For wheat, 1 bu/ac = 67.25 kg/ha.

      Some of the gen names are different in Stroup et al (1994).
      (Sometimes an experimental genotype is given a new name when it is
      released for commercial use.) At a minimum, the following
      differences in gen names should be noted:

      ========== ============
      stroup.nin Stroup et al
      NE83498    Rawhide
      KS831374   Karl
      ========== ============

      Some published versions of the data use long/lat instead of
      col/row. To obtain the correct value of 'long', multiply 'col' by
      1.2. To obtain the correct value of 'lat', multiply 'row' by 4.3.

      Relatively low yields were clustered in the northwest corner,
      which is explained by a low rise in this part of the field,
      causing increased exposure to winter kill from wind damage and
      thus depressed yield. The genotype 'Buckskin' is a known superior
      variety, but was disadvantaged by assignment to unfavorable
      locations within the blocks.

      Note that the figures in Stroup 2002 claim to be based on this
      data, but the number of rows and columns are both off by 1 and the
      positions of Buckskin as shown in Stroup 2002 do not appear to be
      quite right.

      .. rubric:: Source
         :name: source

      Stroup, Walter W., P Stephen Baenziger, Dieter K Mulitze (1994)
      Removing Spatial Variation from Wheat Yield Trials: A Comparison
      of Methods. *Crop Science*, 86:62–66.
      https://doi.org/10.2135/cropsci1994.0011183X003400010011x

      .. rubric:: References
         :name: references

      Littell, R.C. and Milliken, G.A. and Stroup, W.W. and Wolfinger,
      R.D. 1996. *SAS system for mixed models*, SAS Institute, Cary, NC.

      Jose Pinheiro and Douglas Bates, 2000, *Mixed Effects Models in S
      and S-Plus*, Springer.

      Butler, D., B R Cullis, A R Gilmour, B J Goegel. (2004) *Spatial
      Analysis Mixed Models for S language environments*

      W. W. Stroup (2002). Power Analysis Based on Spatial Effects Mixed
      Models: A Tool for Comparing Design and Analysis Strategies in the
      Presence of Spatial Variability. *Journal of Agricultural,
      Biological, and Environmental Statistics*, 7(4), 491-511.
      https://doi.org/10.1198/108571102780

      .. rubric:: See Also
         :name: see-also

      Identical data (except for the missing values) are available in
      the ``nlme`` package as ``Wheat2``.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(stroup.nin)
           dat <- stroup.nin

           # Experiment layout. All "Buckskin" plots are near left side and suffer
           # from poor fertility in two of the reps.
           libs(desplot)
           desplot(dat, yield~col*row,
                   aspect=47.3/26.4, out1="rep", num=gen, cex=0.6, # true aspect
                   main="stroup.nin - yield heatmap (true shape)")

           # Dataframe to hold model predictions
           preds <- data.frame(gen=levels(dat$gen))


           # -----
           # nlme
           libs(nlme)
           # Random RCB model
           lme1 <- lme(yield ~ 0 + gen, random=~1|rep, data=dat, na.action=na.omit)
           preds$lme1 <- fixef(lme1)

           # Linear (Manhattan distance) correlation model
           lme2 <- gls(yield ~ 0 + gen, data=dat,
                       correlation = corLin(form = ~ col + row, nugget=TRUE),
                       na.action=na.omit)
           preds$lme2 <- coef(lme2)

           # Random block and spatial correlation.
           # Note: corExp and corSpher give nearly identical results
           lme3 <- lme(yield ~ 0 + gen, data=dat,
                       random = ~ 1 | rep,
                       correlation = corExp(form = ~ col + row),
                       na.action=na.omit)
           preds$lme3 <- fixef(lme3)

           # AIC(lme1,lme2,lme3) # lme2 is lowest
           ##      df      AIC
           ## lme1 58 1333.702
           ## lme2 59 1189.135
           ## lme3 59 1216.704


           # -----
           # SpATS
           libs(SpATS)

           dat <- transform(dat, yf = as.factor(row), xf = as.factor(col))

           # what are colcode and rowcode???
           sp1 <- SpATS(response = "yield",
                        spatial = ~ SAP(col, row, nseg = c(10,20), degree = 3, pord = 2),
                        genotype = "gen",
                        #fixed = ~ colcode + rowcode,
                        random = ~ yf + xf,
                        data = dat,
                        control = list(tolerance = 1e-03))
           #plot(sp1)
           preds$spats <- predict(sp1, which="gen")$predicted.value


           # -----
           # Template Model Builder
           # See the ar1xar1 example:
           # https://github.com/kaskr/adcomp/tree/master/TMB/inst/examples
           # This example uses dpois() in the cpp file to model a Poisson response
           # with separable AR1xAR1.  I think this example could be used for the
           # stroup.nin data, changing dpois() to something Normal.


           # -----
           if(require("asreml", quietly=TRUE)){
             libs(asreml,lucid)

             # RCB analysis
             as1 <- asreml(yield ~ gen, random = ~ rep, data=dat,
                           na.action=na.method(x="omit"))
             preds$asreml1 <- predict(as1, data=dat, classify="gen")$pvals$predicted.value
             
             # Two-dimensional AR1xAR1 spatial model
             dat <- transform(dat, xf=factor(col), yf=factor(row))
             dat <- dat[order(dat$xf, dat$yf),]
             as2 <- asreml(yield~gen, data=dat,
                           residual = ~ar1(xf):ar1(yf),
                           na.action=na.method(x="omit"))
             preds$asreml2 <- predict(as2, data=dat, classify="gen")$pvals$predicted.value

             lucid::vc(as2)
             ##     effect component std.error z.ratio constr
             ## R!variance   48.7      7.155       6.8    pos
             ##   R!xf.cor    0.6555   0.05638    12      unc
             ##   R!yf.cor    0.4375   0.0806      5.4    unc

           # Compare the estimates from the two asreml models.
           # We see that Buckskin has correctly been shifted upward by the spatial model
             plot(preds$as1, preds$as2, xlim=c(13,37), ylim=c(13,37),
                  xlab="RCB", ylab="AR1xAR1", type='n')
             title("stroup.nin: Comparison of predicted values")
             text(preds$asreml1, preds$asreml2, preds$gen, cex=0.5)
             abline(0,1)
           }

           # -----
           # sommer
           # Fixed gen, random row, col, 2D spline
           libs(sommer)
           dat <- stroup.nin
           dat <- transform(dat, yf = as.factor(row), xf = as.factor(col))
           so1 <- mmer(yield ~ 0+gen,
                       random = ~ vs(xf) + vs(yf) + spl2Db(row,col),
                       data=dat)
           preds$so1 <- coef(so1)[,"Estimate"]
           # spatPlot

           # -----
           # compare variety effects from different packages
           lattice::splom(preds[,-1], main="stroup.nin")


         ## End(Not run)
