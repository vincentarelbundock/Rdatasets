.. container::

   ======== ===============
   USInvest R Documentation
   ======== ===============

   .. rubric:: US Investment Data
      :name: us-investment-data

   .. rubric:: Description
      :name: description

   Time series data on investments in the US, 1968–1982.

   .. rubric:: Usage
      :name: usage

   ::

      data("USInvest")

   .. rubric:: Format
      :name: format

   An annual multiple time series from 1968 to 1982 with 4 variables.

   gnp
      Nominal gross national product,

   invest
      Nominal investment,

   price
      Consumer price index,

   interest
      Interest rate (average yearly discount rate at the New York
      Federal Reserve Bank).

   .. rubric:: Source
      :name: source

   Online complements to Greene (2003). Table F3.1.

   http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

   .. rubric:: References
      :name: references

   Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
   Saddle River, NJ: Prentice Hall.

   .. rubric:: See Also
      :name: see-also

   ``Greene2003``

   .. rubric:: Examples
      :name: examples

   ::

      data("USInvest")

      ## Chapter 3 in Greene (2003)
      ## transform (and round) data to match Table 3.1
      us <- as.data.frame(USInvest)
      us$invest <- round(0.1 * us$invest/us$price, digits = 3)
      us$gnp <- round(0.1 * us$gnp/us$price, digits = 3)
      us$inflation <- c(4.4, round(100 * diff(us$price)/us$price[-15], digits = 2))
      us$trend <- 1:15
      us <- us[, c(2, 6, 1, 4, 5)]

      ## p. 22-24
      coef(lm(invest ~ trend + gnp, data = us))
      coef(lm(invest ~ gnp, data = us))

      ## Example 3.1, Table 3.2
      cor(us)[1,-1]
      pcor <- solve(cor(us))
      dcor <- 1/sqrt(diag(pcor))
      pcor <- (-pcor * (dcor %o% dcor))[1,-1]

      ## Table 3.4
      fm  <- lm(invest ~ trend + gnp + interest + inflation, data = us)
      fm1 <- lm(invest ~ 1, data = us)
      anova(fm1, fm)

      ## More examples can be found in:
      ## help("Greene2003")
