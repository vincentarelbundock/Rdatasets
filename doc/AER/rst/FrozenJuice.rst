.. container::

   =========== ===============
   FrozenJuice R Documentation
   =========== ===============

   .. rubric:: Price of Frozen Orange Juice
      :name: FrozenJuice

   .. rubric:: Description
      :name: description

   Monthly data on the price of frozen orange juice concentrate and
   temperature in the orange-growing region of Florida.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("FrozenJuice")

   .. rubric:: Format
      :name: format

   A monthly multiple time series from 1950(1) to 2000(12) with 3
   variables.

   price
      Average producer price for frozen orange juice.

   ppi
      Producer price index for finished goods. Used to deflate the
      overall producer price index for finished goods to eliminate the
      effects of overall price inflation.

   fdd
      Number of freezing degree days at the Orlando, Florida, airport.
      Calculated as the sum of the number of degrees Fahrenheit that the
      minimum temperature falls below freezing (32 degrees Fahrenheit =
      about 0 degrees Celsius) in a given day over all days in the
      month: ``fdd`` = sum(max(0, 32 - minimum daily temperature)), e.g.
      for February ``fdd`` is the number of freezing degree days from
      January 11 to February 10.

   .. rubric:: Details
      :name: details

   The orange juice price data are the frozen orange juice component of
   processed foods and feeds group of the Producer Price Index (PPI),
   collected by the US Bureau of Labor Statistics (BLS series
   wpu02420301). The orange juice price series was divided by the
   overall PPI for finished goods to adjust for general price inflation.
   The freezing degree days series was constructed from daily minimum
   temperatures recorded at Orlando area airports, obtained from the
   National Oceanic and Atmospheric Administration (NOAA) of the US
   Department of Commerce.

   .. rubric:: Source
      :name: source

   Online complements to Stock and Watson (2007).

   .. rubric:: References
      :name: references

   Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*,
   2nd ed. Boston: Addison Wesley.

   .. rubric:: See Also
      :name: see-also

   ``StockWatson2007``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      ## load data
      data("FrozenJuice")

      ## Stock and Watson, p. 594
      library("dynlm")
      fm_dyn <- dynlm(d(100 * log(price/ppi)) ~ fdd, data = FrozenJuice)
      coeftest(fm_dyn, vcov = vcovHC(fm_dyn, type = "HC1"))

      ## equivalently, returns can be computed 'by hand'
      ## (reducing the complexity of the formula notation)
      fj <- ts.union(fdd = FrozenJuice[, "fdd"],
        ret = 100 * diff(log(FrozenJuice[,"price"]/FrozenJuice[,"ppi"])))
      fm_dyn <- dynlm(ret ~ fdd, data = fj)

      ## Stock and Watson, p. 595
      fm_dl <- dynlm(ret ~ L(fdd, 0:6), data = fj)
      coeftest(fm_dl, vcov = vcovHC(fm_dl, type = "HC1"))

      ## Stock and Watson, Table 15.1, p. 620, numbers refer to columns
      ## (1) Dynamic Multipliers 
      fm1 <- dynlm(ret ~ L(fdd, 0:18), data = fj)
      coeftest(fm1, vcov = NeweyWest(fm1, lag = 7, prewhite =  FALSE))
      ## (2) Cumulative Multipliers
      fm2 <- dynlm(ret ~ L(d(fdd), 0:17) + L(fdd, 18), data = fj)
      coeftest(fm2, vcov = NeweyWest(fm2, lag = 7, prewhite =  FALSE))
      ## (3) Cumulative Multipliers, more lags in NW
      coeftest(fm2, vcov = NeweyWest(fm2, lag = 14, prewhite =  FALSE))
      ## (4) Cumulative Multipliers with monthly indicators
      fm4 <- dynlm(ret ~ L(d(fdd), 0:17) + L(fdd, 18) + season(fdd), data = fj)
      coeftest(fm4, vcov = NeweyWest(fm4, lag = 7, prewhite =  FALSE))
      ## monthly indicators needed?
      fm4r <- update(fm4, . ~ . - season(fdd))
      waldtest(fm4, fm4r, vcov= NeweyWest(fm4, lag = 7, prewhite = FALSE)) ## close ...
