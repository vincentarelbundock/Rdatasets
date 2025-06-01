.. container::

   .. container::

      =========================== ===============
      stephens.sorghum.uniformity R Documentation
      =========================== ===============

      .. rubric:: Uniformity trial of sorghum silage
         :name: uniformity-trial-of-sorghum-silage

      .. rubric:: Description
         :name: description

      Uniformity trial of sorghum silage at Chillicothe, Texas, 1915.

      .. rubric:: Format
         :name: format

      A data frame with 2000 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column / rod

      ``yield``
         yield, ounces

      .. rubric:: Details
         :name: details

      Grown near Chillicothe, TX in 1915. Rows 40 inches apart. Each row
      harvested in 1-rod (16.5 ft) lengths. East side higher yielding
      than west side. Yields are weight (ounces) of green forage each
      rod-row. Total area harvested: 100*40/12 = 333.33 feet by
      20*16.5=330 feet.

      Field width: 20 plots \* 16.5 ft (1 rod) = 330 feet.

      Field length: 100 plots \* 40 in = 333 feet

      .. rubric:: Source
         :name: source

      Stephens, Joseph C. 1928. Experimental methods and the probable
      error in field experiments with sorghum. Journal of Agricultural
      Research, 37, 629–646.
      https://naldc.nal.usda.gov/catalog/IND43967516

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
           
           data(stephens.sorghum.uniformity)
           dat <- stephens.sorghum.uniformity

           dat <- subset(dat, row>2 & row<99) # omit outer two rows
           # mean(dat$yield) # 180.27
           # range(dat$yield) # 75,302 matches Stephens
           
           # densityplot(~dat$yield) # Stephens figure 3
           
           # Aggregate 4 side-by-side rows.
           d4 <- dat
           d4$row2 <- ceiling((d4$row-2)/4)
           d4 <- aggregate(yield ~ row2+col, data=d4, FUN=sum)
           d4$row2 <- 25-d4$row2 # flip horizontally
           
           libs(desplot)
           grays <- colorRampPalette(c("#d9d9d9","#252525"))
           desplot(d4, yield ~ row2*col,
                   aspect=333/330, flip=TRUE, # true aspect
                   main="stephens.sorghum.uniformity",
                   col.regions=grays(3),
                   at=c(500,680,780,1000))
           # Similar to Stephens Figure 7.  North at top.  East at right.
           

         ## End(Not run)
