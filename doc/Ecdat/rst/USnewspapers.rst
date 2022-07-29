.. container::

   ============ ===============
   USnewspapers R Documentation
   ============ ===============

   .. rubric:: US newspaper revenue 1956 - 2020
      :name: us-newspaper-revenue-1956---2020

   .. rubric:: Description
      :name: description

   Advertising and circulation revenue for US newspapers since 1956 with
   GDP in billions of current dollars (i.e., not adjusted for inflation)
   plus ads as a proportion of revenue and revenue as a proportion of US
   Gross Domestic Product (GDP).

   .. rubric:: Usage
      :name: usage

   ::

      data("USnewspapers")

   .. rubric:: Format
      :name: format

   A data frame with 65 observations on the following 14 variables.

   Year
      an integer vector giving the year ``c(1956:2020)``.

   Ads_currentGdollars, Ads_G2012dollars, Circ_currentGdollars, Circ_G2012dollars, Revenue_currentGdollars, Revenue_G2012dollars
      Total newspaper revenue from advertising, circulation, and
      combined in billions of US dollars, both current and adjusted for
      inflation to 2012 dollars. The data were compiled from detailed
      reports until 2012 and estimated since.

   AdsProportion
      Advertising as a proportion of total revenue.

   GDP_nominalG, GDP_G2012
      US GDP in billions of dollars, both current and adjusted for
      inflation to constant 2012 dollars.

   newspaperAds_p_GDP
      Newspaper advertising revenue as a percent of GDP.

   newspapers_p_GDP
      Newspaper revenue as a proportion of GDP.

   Population_M
      US population in millions

   RevenuePerCap_nominal
      Newspaper revenue per person in current dollars.

   RevenuePerCap_2012
      Newspaper revenue per person in constant 2012 dollars.

   .. rubric:: Details
      :name: details

   Data used by `McChesney and Nichols (2021-12-13) To Protect and
   Extend Democracy, Recreate Local News Media (Freepress.net, p. 6,
   note
   10) <https://www.freepress.net/sites/default/files/2022-03/to_protect_democracy_recreate_local_news_media_final.pdf>`__
   to estimate that newspaper subsidies averaged roughly 0.216 percent
   of GDP between 1840 and 1844.

   .. rubric:: Source
      :name: source

   Newspaper data from `"Newspapers fact sheet" published by the Pew
   Research
   Center <https://www.pewresearch.org/journalism/fact-sheet/newspapers/>`__,
   accessed 2021-12-18.

   GDP data from `Measuring Worth <https://www.measuringworth.com/>`__,
   accessed 2021-12-18.

   .. rubric:: References
      :name: references

   `McChesney and Nichols (2021-12-13) To Protect and Extend Democracy,
   Recreate Local News Media (Freepress.net, p. 6, note
   10) <https://www.freepress.net/sites/default/files/2022-03/to_protect_democracy_recreate_local_news_media_final.pdf>`__,
   accessed 2021-12-18.

   Newspaper data from `"Newspaper fact sheet" published by the Pew
   Research
   Center <https://www.pewresearch.org/journalism/fact-sheet/newspapers/>`__.

   GDP data from `Measuring Worth <https://www.measuringworth.com/>`__.

   .. rubric:: Examples
      :name: examples

   ::

      data(USnewspapers)

      plotNewsRevenue <- function(ys=c(2, 4, 6)){
        ylim. <- range(USnewspapers[ys], na.rm=TRUE)
        xlim. <- range(USnewspapers$Year)
        
        to2013 <- (USnewspapers$Year<2013)

        matplot(USnewspapers$Year[to2013], 
              USnewspapers[to2013, ys], type='l', 
              log='y', xlim=xlim., ylim=ylim., las=1, 
              xlab='', ylab='')
        matlines(USnewspapers$Year[!to2013], col=4:6, 
              USnewspapers[!to2013, ys])

        lnms <- outer(names(USnewspapers[c(2, 4, 6)]),
              c('', '-est'), paste0)

        legend('bottom', lnms, col=1:6, lty=1:6, 
             cex=0.5)
      }

      plotNewsRevenue()
      plotNewsRevenue(c(3, 5, 7))

      plot(100*newspapers_p_GDP~Year, USnewspapers, type='l', 
           las=1, xlab='', ylab='newspapers percent of GDP')

      plot(RevenuePerCap_nominal~Year, USnewspapers, type='l', 
           las=1, xlab='', ylab='Revenue per capita (nominal)')
      plot(RevenuePerCap_2012~Year, USnewspapers, type='l', 
           las=1, xlab='', ylab='Revenue per capita (2012$)')
