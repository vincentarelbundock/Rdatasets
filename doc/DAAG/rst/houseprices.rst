.. container::

   .. container::

      =========== ===============
      houseprices R Documentation
      =========== ===============

      .. rubric:: Aranda House Prices
         :name: aranda-house-prices

      .. rubric:: Description
         :name: description

      The ``houseprices`` data frame consists of the floor area, price,
      and the number of bedrooms for a sample of houses sold in Aranda
      in 1999. Aranda is a suburb of Canberra, Australia.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         houseprices

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      area
         a numeric vector giving the floor area

      bedrooms
         a numeric vector giving the number of bedrooms

      sale.price
         a numeric vector giving the sale price in thousands of
         Australian dollars

      .. rubric:: Source
         :name: source

      J.H. Maindonald

      .. rubric:: Examples
         :name: examples

      .. code:: R

         plot(sale.price~area, data=houseprices)
         pause()

         coplot(sale.price~area|bedrooms, data=houseprices)
         pause()

         print("Cross-Validation - Example 5.5.2")

         houseprices.lm <- lm(sale.price ~ area, data=houseprices)
         summary(houseprices.lm)$sigma^2
         pause()

         CVlm()
         pause()

         print("Bootstrapping - Example 5.5.3")
         houseprices.fn <- function (houseprices, index){
         house.resample <- houseprices[index,]
         house.lm <- lm(sale.price ~ area, data=house.resample)
         coef(house.lm)[2]    # slope estimate for resampled data
         }
         require(boot)       # ensure that the boot package is loaded
         houseprices.boot <- boot(houseprices, R=999, statistic=houseprices.fn)

         houseprices1.fn <- function (houseprices, index){
         house.resample <- houseprices[index,]
         house.lm <- lm(sale.price ~ area, data=house.resample)
         predict(house.lm, newdata=data.frame(area=1200))
         }

         houseprices1.boot <- boot(houseprices, R=999, statistic=houseprices1.fn)
         boot.ci(houseprices1.boot, type="perc") # "basic" is an alternative to "perc"
         houseprices2.fn <- function (houseprices, index){
         house.resample <- houseprices[index,]
         house.lm <- lm(sale.price ~ area, data=house.resample)
         houseprices$sale.price-predict(house.lm, houseprices)  # resampled prediction errors
         }

         n <- length(houseprices$area)
         R <- 200   
         houseprices2.boot <- boot(houseprices, R=R, statistic=houseprices2.fn)
         house.fac <- factor(rep(1:n, rep(R, n)))
         plot(house.fac, as.vector(houseprices2.boot$t), ylab="Prediction Errors", 
         xlab="House")
         pause()

         plot(apply(houseprices2.boot$t,2, sd)/predict.lm(houseprices.lm, se.fit=TRUE)$se.fit,
              ylab="Ratio of Bootstrap SE's to Model-Based SE's", xlab="House", pch=16)
         abline(1,0)
