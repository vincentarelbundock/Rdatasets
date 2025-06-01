.. container::

   .. container::

      =========== ===============
      besag.beans R Documentation
      =========== ===============

      .. rubric:: Competition experiment in beans with height
         measurements
         :name: competition-experiment-in-beans-with-height-measurements

      .. rubric:: Description
         :name: description

      Competition experiment in beans with height measurements

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("besag.beans")

      .. rubric:: Format
         :name: format

      A data frame with 152 observations on the following 6 variables.

      ``gen``
         genotype / variety

      ``height``
         plot height, cm

      ``yield``
         plot yield, g

      ``row``
         row / block

      ``rep``
         replicate factor

      ``col``
         column

      .. rubric:: Details
         :name: details

      Field beans of regular height were grown beside shorter varieties.
      In each block, each variety occurred once as a left-side neighbor
      and once as a right-side neighbor of every variety (including
      itself). Border plots were placed at the ends of each block. Each
      block with 38 adjacent plots. Each plot was one row, 3 meters long
      with 50 cm spacing between rows. No gaps between plots. Spacing
      between plants was 6.7 cm. Four blocks (rows) were used, each with
      six replicates.

      Plot yield and height was recorded.

      Kempton and Lockwood used models that adjusted yield according to
      the difference in height of neighboring plots.

      Field length: 4 plots \* 3m = 12m

      Field width: 38 plots \* 0.5 m = 19m

      .. rubric:: Source
         :name: source

      Julian Besag and Rob Kempton (1986). Statistical Analysis of Field
      Experiments Using Neighbouring Plots. *Biometrics*, 42, 231-251.
      Table 6. https://doi.org/10.2307/2531047

      .. rubric:: References
         :name: references

      Kempton, RA and Lockwood, G. (1984). Inter-plot competition in
      variety trials of field beans (Vicia faba L.). *The Journal of
      Agricultural Science*, 103, 293–302.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(besag.beans)
         dat = besag.beans

         libs(desplot)
         desplot(dat, yield ~ col*row,
                 aspect=12/19, out1=row, out2=rep, num=gen, cex=1, # true aspect
                 main="besag.beans")


         libs(reshape2)
         # Add a covariate = excess height of neighbors
         mat <- acast(dat, row~col, value.var='height')
         mat2 <- matrix(NA, nrow=4, ncol=38)
         mat2[,2:37] <- (mat[,1:36] + mat[,3:38] - 2*mat[,2:37])
         dat2 <- melt(mat2)
         colnames(dat2) <- c('row','col','cov')
         dat <- merge(dat, dat2)
           
         # Drop border plots
         dat <- subset(dat, rep != 'R0')
           
         libs(lattice)
         # Plot yield vs neighbors height advantage
         xyplot(yield~cov, data=dat, group=gen,
                main="besag.beans",
                xlab="Mean excess heights of neighbor plots",
                auto.key=list(columns=3))
           
         # Trial mean.
         mean(dat$yield) # 391 matches Kempton table 3
           
         # Mean excess height of neighbors for each genotype
         # tapply(dat$cov, dat$gen, mean)/2 # Matches Kempton table 4

         # Variety means, matches Kempton table 4 mean yield
         m1 <- lm(yield ~ -1 + gen, dat)
         coef(m1)

         # Full model used by Kempton, eqn 5.  Not perfectly clear.
         # Appears to include rep term, perhaps within block
         dat$blk <- factor(dat$row)
         dat$blkrep <- factor(paste(dat$blk, dat$rep))
         m2 <- lm(yield ~ -1 + gen + blkrep + cov, data=dat)
         coef(m2) # slope 'cov' = -.72, while Kempton says -.79


         ## End(Not run)
