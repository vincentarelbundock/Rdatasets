.. container::

   .. container::

      ==== ===============
      bill R Documentation
      ==== ===============

      .. rubric:: Wealth, age and region of 225 billionaires in 1992 as
         reported in the Fortune magazine
         :name: wealth-age-and-region-of-225-billionaires-in-1992-as-reported-in-the-fortune-magazine

      .. rubric:: Description
         :name: description

      Wealth, age and region of 225 billionaires in 1992 as reported in
      the Fortune magazine

      .. rubric:: Usage
         :name: usage

      .. code:: R

         bill

      .. rubric:: Format
         :name: format

      A data frame with 225 rows and three columns:

      wealth
         Wealth in billions of US dollars

      age
         Age of the billionaire

      region
         five regions:Asia, Europe, Middle East, United States, and
         Other

      .. rubric:: Source
         :name: source

      Fortune magazine 1992.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         head(bill)
         summary(bill)
         table(bill$region)
         levels(bill$region)  
         levels(bill$region) <- c("Asia", "Europe", "Mid-East", "Other", "USA")
         bill.wealth.ge5 <- bill[bill$wealth>5, ]
         bill.wealth.ge5 
         bill.region.A <-  bill[ bill$region == "A", ]
         bill.region.A
         a <-  seq(1, 10, by =2) 
         oddrows <- bill[a, ]
         barplot(table(bill$region), col=2:6)
         hist(bill$wealth) # produces a dull looking plot
         hist(bill$wealth, nclass=20)  # produces a more detailed plot.
         hist(bill$wealth, nclass=20, xlab="Wealth", 
         main="Histogram of wealth of billionaires")  
         # produces a more informative plot.
         plot(bill$age, bill$wealth)  # A very dull plot.
         plot(bill$age, bill$wealth, xlab="Age", ylab="Wealth", pch="*")  # better
         plot(bill$age, bill$wealth, xlab="Age", ylab="Wealth", type="n")
         # Lays the plot area but does not plot.
         text(bill$age, bill$wealth, labels=bill$region, cex=0.7, col=2:6)
         # Adds the points to the empty plot.
         # Provides a better looking plot with more information.
         boxplot(data=bill, wealth ~ region, col=2:6)
         tapply(X=bill$wealth, INDEX=bill$region, FUN=mean)
         tapply(X=bill$wealth, INDEX=bill$region, FUN=sd)
         round(tapply(X=bill$wealth, INDEX=bill$region, FUN=mean), 2)
         library(ggplot2)
         gg <- ggplot2::ggplot(data=bill, aes(x=age, y=wealth)) +
         geom_point(aes(col=region, size=wealth)) + 
         geom_smooth(method="loess", se=FALSE) + 
         xlim(c(7, 102)) + 
         ylim(c(1, 37)) + 
         labs(subtitle="Wealth vs Age of Billionaires", 
         y="Wealth (Billion US $)", x="Age", 
         title="Scatterplot", caption = "Source: Fortune Magazine, 1992.")
         plot(gg)
