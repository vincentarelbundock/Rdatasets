.. container::

   .. container::

      =============== ===============
      lonnquist.maize R Documentation
      =============== ===============

      .. rubric:: Multi-environment trial of maize, half diallel
         :name: multi-environment-trial-of-maize-half-diallel

      .. rubric:: Description
         :name: description

      Half diallel of maize

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("lonnquist.maize")

      .. rubric:: Format
         :name: format

      A data frame with 78 observations on the following 3 variables.

      ``p1``
         parent 1 factor

      ``p2``
         parent 2 factor

      ``yield``
         yield

      .. rubric:: Details
         :name: details

      Twelve hybrids were selfed/crossed in a half-diallel design. The
      data here are means adjusted for block effects. Original
      experiment was 3 reps at 2 locations in 2 years.

      .. rubric:: Source
         :name: source

      J. H. Lonnquist, C. O. Gardner. (1961) Heterosis in Intervarietal
      Crosses in Maize and Its Implication in Breeding Procedures. Crop
      Science, 1, 179-183. Table 1.

      .. rubric:: References
         :name: references

      Mohring, Melchinger, Piepho. (2011). REML-Based Diallel Analysis.
      *Crop Science*, 51, 470-478.
      https://doi.org/10.2135/cropsci2010.05.0272

      C. O. Gardner and S. A. Eberhart. 1966. Analysis and
      Interpretation of the Variety Cross Diallel and Related
      Populations. *Biometrics*, 22, 439-452.
      https://doi.org/10.2307/2528181

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(lonnquist.maize)
           dat <- lonnquist.maize
           dat <- transform(dat,
                            p1=factor(p1,
                                      levels=c("C","L","M","H","G","P","B","RM","N","K","R2","K2")),
                            p2=factor(p2,
                                      levels=c("C","L","M","H","G","P","B","RM","N","K","R2","K2")))
           
           libs(lattice)
           redblue <- colorRampPalette(c("firebrick", "lightgray", "#375997"))
           levelplot(yield ~ p1*p2, dat, col.regions=redblue,
                     main="lonnquist.maize - yield of diallel cross")


           # Calculate the F1 means in Lonnquist, table 1
           # libs(reshape2)
           # mat <- acast(dat, p1~p2)
           # mat[upper.tri(mat)] <- t(mat)[upper.tri(mat)] # make symmetric
           # diag(mat) <- NA
           # round(rowMeans(mat, na.rm=TRUE),1)
           ##    C     L     M     H     G     P     B    RM     N     K    R2    K2
           ## 94.8  89.2  95.0  96.4  95.3  95.2  97.3  93.7  95.0  94.0  98.9 102.4


           # Griffings method
           # https://www.statforbiology.com/2021/stat_met_diallel_griffing/
           # libs(lmDiallel)
           # dat2 <- lonnquist.maize
           # dat2 <- subset(dat2,
           #                is.element(p1, c("M","H","G","B","K","K2")) &
           #                is.element(p2, c("M","H","G","B","K","K2")))
           # dat2 <- droplevels(dat2)
           # dmod1 <- lm(yield ~ GCA(p1, p2) + tSCA(p1, p2),
           #             data = dat2)
           # dmod2 <- lm.diallel(yield ~ p1 + p2, 
           #                     data = dat2, fct = "GRIFFING2")
           # anova.diallel(dmod1, MSE=7.1, dfr=60)
           ## Response: yield
           ##              Df Sum Sq Mean Sq F value    Pr(>F)    
           ## GCA(p1, p2)   5 234.23  46.846  6.5980 5.923e-05 ***
           ## tSCA(p1, p2) 15 238.94  15.929  2.2436   0.01411 *  
           ## Residuals    60          7.100                      

           
           # ----------

           if(require("asreml", quietly=TRUE)){
             # Mohring 2011 used 6 varieties to calculate GCA & SCA
             # Matches Table 3, column 2
             d2 <- subset(dat, is.element(p1, c("M","H","G","B","K","K2")) &
                                 is.element(p2, c("M","H","G","B","K","K2")))
             d2 <- droplevels(d2)
             libs(asreml,lucid)
             m2 <- asreml(yield~ 1, data=d2, random = ~ p1 + and(p2))
             lucid::vc(m2)
             ##     effect component std.error z.ratio      con
             ##  p1!p1.var     3.865     3.774     1   Positive
             ## R!variance    15.93      5.817     2.7 Positive
           
             # Calculate GCA effects
             m3 <- asreml(yield~ p1 + and(p2), data=d2)
             coef(m3)$fixed-1.462
             # Matches Gardner 1966, Table 5, Griffing method
           }
           

         ## End(Not run)
