.. container::

   .. container::

      ========================= ===============
      kalamkar.wheat.uniformity R Documentation
      ========================= ===============

      .. rubric:: Uniformity trial of wheat
         :name: uniformity-trial-of-wheat

      .. rubric:: Description
         :name: description

      Uniformity trial of wheat at Rothamsted, UK in 1931.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("kalamkar.wheat.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 1280 observations on the following 4 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, grams/half-meter

      ``ears``
         ears per half-meter

      .. rubric:: Details
         :name: details

      Kalamkar's paper published in 1932. Estimated crop year 1931.

      Plot 18 of the Four Course Rotation Experiment, Great Hoos, at
      Rothamsted, UK was used. Sown with Yeoman II wheat.

      Field width = 16 segments \* 0.5 meters = 8 meters.

      Field length: 80 rows \* 6 inches apart = 40 feet.

      The grain yield and number of ears for each half-meter length were
      recorded. This is quite a small field, only 1/40 acre in size.

      Edge rows have higher yields. Row-end units have higher yields
      than interior units. These border effects are significant.
      Variation between rows is greater than variation within rows.
      Negative correlation between rows may indicate competition
      effects.

      For ears, Kalamkar discarded 4 rows from each side and 3
      half-meter lengths at each end.

      Kalamkar suggested using four parallel half-meter rows as a
      sampling unit.

      Note, the Rothamsted report for 1931, page 57, says: During the
      year three workers (F. R. Immer, S. H. Justensen and R. J.
      Kalamkar) have taken up the question of the most efficient use of
      land in experiments in which an edge row must be discarded...

      .. rubric:: Source
         :name: source

      Kalamkar, R. J (1932). A Study in Sampling Technique with Wheat.
      The Journal of Agricultural Science, Vol.22(4), pp.783-796.
      https://doi.org/10.1017/S0021859600054599

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(kalamkar.wheat.uniformity)
           dat <- kalamkar.wheat.uniformity
           
           plot(yield ~ ears, dat, main="kalamkar.wheat.uniformity")
           
           # totals match Kalamkar
           # sum(dat$yield) # 24112.5
           # sum(dat$ears) # 25850
           
           libs(desplot)
           desplot(dat, ears ~ col*row,
                   flip=TRUE, aspect=(80*0.5)/(16*1.64042), # true aspect
                   main="kalamkar.wheat.uniformity - ears")
           desplot(dat, yield ~ col*row,
                   flip=TRUE, aspect=(80*0.5)/(16*1.64042), # true aspect
                   main="kalamkar.wheat.uniformity - yield")
           
           # ----------
           
           if(require("asreml", quietly=TRUE)){
             libs(asreml,lucid)
             
             # Show the negative correlation between rows
             dat <- transform(dat,
                              rowf=factor(row), colf=factor(col))
             dat <- dat[order(dat$rowf, dat$colf),]
             m1 = asreml(yield ~ 1, data=dat, resid= ~ ar1(rowf):ar1(colf))
             lucid::vc(m1)
             ##             effect component std.error z.ratio bound pctch
             ##        rowf:colf!R  81.53      3.525      23       P 0  
             ## rowf:colf!rowf!cor  -0.09464   0.0277     -3.4     U 0.1
             ## rowf:colf!colf!cor   0.2976    0.02629    11       U 0.1
           }
           

         ## End(Not run)
