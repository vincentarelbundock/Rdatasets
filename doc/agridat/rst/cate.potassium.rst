.. container::

   .. container::

      ============== ===============
      cate.potassium R Documentation
      ============== ===============

      .. rubric:: Relative cotton yield for different soil potassium
         concentrations
         :name: relative-cotton-yield-for-different-soil-potassium-concentrations

      .. rubric:: Description
         :name: description

      Relative cotton yield for different soil potassium concentrations

      .. rubric:: Format
         :name: format

      A data frame with 24 observations on the following 2 variables.

      ``yield``
         Relative yield

      ``potassium``
         Soil potassium, ppm

      .. rubric:: Details
         :name: details

      Cate & Nelson used this data to determine the minimum optimal
      amount of soil potassium to achieve maximum yield.

      Note, Fig 1 of Cate & Nelson does not match the data from Table 2.
      It sort of appears that points with high-concentrations of
      potassium were shifted left to a truncation point. Also, the
      calculations below do not quite match the results in Table 1.
      Perhaps the published data were rounded?

      .. rubric:: Source
         :name: source

      Cate, R.B. and Nelson, L.A. (1971). A simple statistical procedure
      for partitioning soil test correlation data into two classes.
      *Soil Science Society of America Journal*, 35, 658–660.
      https://doi.org/10.2136/sssaj1971.03615995003500040048x

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(cate.potassium)
         dat <- cate.potassium
         names(dat) <- c('y','x')

         CateNelson <- function(dat){
           dat <- dat[order(dat$x),] # Sort the data by x
           x <- dat$x
           y <- dat$y

           # Create a data.frame to store the results
           out <- data.frame(x=NA, mean1=NA, css1=NA, mean2=NA, css2=NA, r2=NA)

           css <- function(x) { var(x) * (length(x)-1) }
           tcss <- css(y) # Total corrected sum of squares

           for(i in 2:(length(y)-2)){
             y1 <- y[1:i]
             y2 <- y[-(1:i)]

             out[i, 'x'] <- x[i]
             out[i, 'mean1'] <- mean(y1)
             out[i, 'mean2'] <- mean(y2)
             out[i, 'css1'] <- css1 <- css(y1)
             out[i, 'css2'] <- css2 <- css(y2)
             out[i, 'r2'] <-  ( tcss - (css1+css2)) / tcss
           }
           return(out)
         }

         cn <- CateNelson(dat)
         ix <- which.max(cn$r2)
         with(dat, plot(y~x, ylim=c(0,110), xlab="Potassium", ylab="Yield"))
         title("cate.potassium - Cate-Nelson analysis")
         abline(v=dat$x[ix], col="skyblue")
         abline(h=(dat$y[ix] + dat$y[ix+1])/2, col="skyblue")

           # another approach with similar results
           # https://joe.org/joe/2013october/tt1.php
           libs("rcompanion")
           cateNelson(dat$x, dat$y, plotit=0)

         ## End(Not run)
