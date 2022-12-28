.. container::

   ====== ===============
   USGasG R Documentation
   ====== ===============

   .. rubric:: US Gasoline Market Data (1960–1995, Greene)
      :name: us-gasoline-market-data-19601995-greene

   .. rubric:: Description
      :name: description

   Time series data on the US gasoline market.

   .. rubric:: Usage
      :name: usage

   ::

      data("USGasG")

   .. rubric:: Format
      :name: format

   An annual multiple time series from 1960 to 1995 with 10 variables.

   gas
      Total US gasoline consumption (computed as total expenditure
      divided by price index).

   price
      Price index for gasoline.

   income
      Per capita disposable income.

   newcar
      Price index for new cars.

   usedcar
      Price index for used cars.

   transport
      Price index for public transportation.

   durable
      Aggregate price index for consumer durables.

   nondurable
      Aggregate price index for consumer nondurables.

   service
      Aggregate price index for consumer services.

   population
      US total population in millions.

   .. rubric:: Source
      :name: source

   Online complements to Greene (2003). Table F2.2.

   https://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

   .. rubric:: References
      :name: references

   Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
   Saddle River, NJ: Prentice Hall.

   .. rubric:: See Also
      :name: see-also

   ``Greene2003``, ``USGasB``

   .. rubric:: Examples
      :name: examples

   ::

      data("USGasG", package = "AER")
      plot(USGasG)

      ## Greene (2003)
      ## Example 2.3
      fm <- lm(log(gas/population) ~ log(price) + log(income) + log(newcar) + log(usedcar),
        data = as.data.frame(USGasG))
      summary(fm)

      ## Example 4.4
      ## estimates and standard errors (note different offset for intercept)
      coef(fm)
      sqrt(diag(vcov(fm)))
      ## confidence interval
      confint(fm, parm = "log(income)")
      ## test linear hypothesis
      linearHypothesis(fm, "log(income) = 1")

      ## Example 7.6
      ## re-used in Example 8.3
      trend <- 1:nrow(USGasG)
      shock <- factor(time(USGasG) > 1973, levels = c(FALSE, TRUE),
        labels = c("before", "after"))

      ## 1960-1995
      fm1 <- lm(log(gas/population) ~ log(income) + log(price) + log(newcar) +
        log(usedcar) + trend, data = as.data.frame(USGasG))
      summary(fm1)
      ## pooled
      fm2 <- lm(log(gas/population) ~ shock + log(income) + log(price) + log(newcar) +
        log(usedcar) + trend, data = as.data.frame(USGasG))
      summary(fm2)
      ## segmented
      fm3 <- lm(log(gas/population) ~ shock/(log(income) + log(price) + log(newcar) +
        log(usedcar) + trend), data = as.data.frame(USGasG))
      summary(fm3)

      ## Chow test
      anova(fm3, fm1)
      library("strucchange")
      sctest(log(gas/population) ~ log(income) + log(price) + log(newcar) +
        log(usedcar) + trend, data = USGasG, point = c(1973, 1), type = "Chow")
      ## Recursive CUSUM test
      rcus <- efp(log(gas/population) ~ log(income) + log(price) + log(newcar) +
        log(usedcar) + trend, data = USGasG, type = "Rec-CUSUM")
      plot(rcus)
      sctest(rcus)
      ## Note: Greene's remark that the break is in 1984 (where the process crosses its
      ## boundary) is wrong. The break appears to be no later than 1976.

      ## More examples can be found in:
      ## help("Greene2003")
