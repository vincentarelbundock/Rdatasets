.. container::

   .. container::

      ==== ===============
      grog R Documentation
      ==== ===============

      .. rubric:: Alcohol consumption in Australia and New Zealand
         :name: alcohol-consumption-in-australia-and-new-zealand

      .. rubric:: Description
         :name: description

      Data are annual apparent alcohol consumption in Australia and New
      Zealand, in liters of pure alcohol content per annum, separately
      for beer, wine, and spirits (including spirit-based products).

      .. rubric:: Usage
         :name: usage

      ::

         data(grog)

      .. rubric:: Format
         :name: format

      A data frame with 18 observations on the following 5 variables.

      ``Beer``
         liters per annum

      ``Wine``
         liters per annum

      ``Spirit``
         liters per annum

      ``Country``
         a factor with levels ``Australia`` ``NewZealand``

      ``Year``
         Year ending in June of the given year

      .. rubric:: Details
         :name: details

      Data are total available pure alcohol content, for the three
      categories, divided by numbers of persons aged 15 years or more.
      The source data for New Zealand included quarterly figures from
      December 1997, and annual data to December for all years. The
      annual New Zealand figure to June 1998 required an estimate for
      September 1997 that was obtained by extrapolating back the third
      quarter trend line from later years.

      .. rubric:: Source
         :name: source

      Australian data are from https://www.abs.gov.au. For New Zealand
      data, go to https://infoshare.stats.govt.nz/ Click on 'Industry
      sectors' and then on 'Alcohol Available for Consumption - ALC'.

      .. rubric:: Examples
         :name: examples

      ::

         data(grog)
         library(lattice)
         xyplot(Beer+Wine+Spirit ~ Year | Country, data=grog)
         xyplot(Beer+Wine+Spirit ~ Year, groups=Country, data=grog, outer=TRUE)
