.. container::

   .. container::

      ============ ===============
      reid.grasses R Documentation
      ============ ===============

      .. rubric:: Yields of four grasses for a wide range of nitrogen
         fertilizer
         :name: yields-of-four-grasses-for-a-wide-range-of-nitrogen-fertilizer

      .. rubric:: Description
         :name: description

      Yields of four grasses for a wide range of nitrogen fertilizer,
      conducted over 3 years.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("reid.grasses")

      .. rubric:: Format
         :name: format

      A data frame with 210 observations on the following 5 variables.

      ``nitro``
         nitrogen, 21 numeric levels

      ``year``
         Y1, Y2, or Y3

      ``gen``
         genotype

      ``drymatter``
         dry matter content

      ``protein``
         protein content

      .. rubric:: Details
         :name: details

      Experiment at the Hannah Research Institute, Ayr.

      Single plots were planted to 4 different kinds of grasses. Within
      each plot, 21 nitrogen treatments were randomized.

      Reid modeled the dry matter yield with four-parameter logistic
      curves of the form y = a - b exp(-cx^d).

      .. rubric:: Source
         :name: source

      D. Reid (1985). A comparison of the yield responses of four
      grasses to a wide range of nitrogen application rates. *J. Agric.
      Sci.*, 105, 381-387. Table 1 & 3.
      https://doi.org/10.1017/S0021859600056434

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(reid.grasses)
           dat <- reid.grasses

           libs(latticeExtra)
           foo <- xyplot(drymatter + protein ~ nitro|year, dat, group=gen,
                         auto.key=list(columns=4),
                         as.table=TRUE, type=c('p','l'),
                         main="reid.grasses",ylab="drymatter/protein trait value",
                         scales=list(y=list(relation="free")))
           combineLimits(foo)

           # devtools::run_examples does NOT like groupedData
           if (0){
             libs(nlme)
             dat2 <- dat
             dat2$indiv <- paste(dat$year, dat$gen) # individual year+genotype curves
             
             # use all data to get initial values
             inits <- getInitial(drymatter ~ SSfpl(nitro, A, B, xmid, scal), data = dat2)
             inits
             ##         A          B       xmid       scal 
             ## -4.167902  12.139796  68.764796 128.313106 
             xvals <- 0:800
             y1 <- with(as.list(inits), SSfpl(xvals, A, B, xmid, scal))
             plot(drymatter ~ nitro, dat2)
             lines(xvals,y1)
             
             # must have groupedData object to use augPred
             dat2 <- groupedData(drymatter ~ nitro|indiv, data=dat2)
             plot(dat2)
             
             # without 'random', all effects are included in 'random'
             m1 <- nlme(drymatter ~ SSfpl(nitro, A, B, xmid,scale),
                        data= dat2,
                        fixed= A + B + xmid + scale ~ 1,
                        random = A + B + xmid + scale ~ 1|indiv,
                        start=inits)
             fixef(m1)
             summary(m1)
             plot(augPred(m1, level=0:1),
                  main="reid.grasses - observed/predicted data") # only works with groupedData object
           } # if(0)  

         ## End(Not run)
