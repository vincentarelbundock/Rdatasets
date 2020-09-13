========== ===============
USAirlines R Documentation
========== ===============

Cost Data for US Airlines
-------------------------

Description
~~~~~~~~~~~

Cost data for six US airlines in 1970–1984.

Usage
~~~~~

::

   data("USAirlines")

Format
~~~~~~

A data frame containing 90 observations on 6 variables.

firm
   factor indicating airline firm.

year
   factor indicating year.

output
   output revenue passenger miles index number.

cost
   total cost (in USD 1000).

price
   fuel price.

load
   average capacity utilization of the fleet.

Source
~~~~~~

Online complements to Greene (2003). Table F7.1.

http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

References
~~~~~~~~~~

Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper Saddle
River, NJ: Prentice Hall.

See Also
~~~~~~~~

``Greene2003``

Examples
~~~~~~~~

::

   data("USAirlines")

   ## Example 7.2 in Greene (2003)
   fm_full <- lm(log(cost) ~ log(output) + I(log(output)^2) + log(price) + load + year + firm,
     data = USAirlines)
   fm_time <- lm(log(cost) ~ log(output) + I(log(output)^2) + log(price) + load + year,
     data = USAirlines)
   fm_firm <- lm(log(cost) ~ log(output) + I(log(output)^2) + log(price) + load + firm,
     data = USAirlines)
   fm_no <- lm(log(cost) ~ log(output) + I(log(output)^2) + log(price) + load, data = USAirlines)

   ## Table 7.2
   anova(fm_full, fm_time)
   anova(fm_full, fm_firm)
   anova(fm_full, fm_no)

   ## alternatively, use plm()
   library("plm")
   usair <- pdata.frame(USAirlines, c("firm", "year"))
   fm_full2 <- plm(log(cost) ~ log(output) + I(log(output)^2) + log(price) + load,
     data = usair, model = "within", effect = "twoways")
   fm_time2 <- plm(log(cost) ~ log(output) + I(log(output)^2) + log(price) + load,
     data = usair, model = "within", effect = "time")
   fm_firm2 <- plm(log(cost) ~ log(output) + I(log(output)^2) + log(price) + load,
     data = usair, model = "within", effect = "individual")
   fm_no2 <- plm(log(cost) ~ log(output) + I(log(output)^2) + log(price) + load,
     data = usair, model = "pooling")
   pFtest(fm_full2, fm_time2)
   pFtest(fm_full2, fm_firm2)
   pFtest(fm_full2, fm_no2)

   ## More examples can be found in:
   ## help("Greene2003")
