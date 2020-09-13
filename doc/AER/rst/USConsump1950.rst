============= ===============
USConsump1950 R Documentation
============= ===============

US Consumption Data (1940–1950)
-------------------------------

Description
~~~~~~~~~~~

Time series data on US income and consumption expenditure, 1940–1950.

Usage
~~~~~

::

   data("USConsump1950")

Format
~~~~~~

An annual multiple time series from 1940 to 1950 with 3 variables.

income
   Disposable income.

expenditure
   Consumption expenditure.

war
   Indicator variable: Was the year a year of war?

Source
~~~~~~

Online complements to Greene (2003). Table F2.1.

http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

References
~~~~~~~~~~

Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper Saddle
River, NJ: Prentice Hall.

See Also
~~~~~~~~

``Greene2003``, ``USConsump1979``, ``USConsump1993``

Examples
~~~~~~~~

::

   ## Greene (2003)
   ## data
   data("USConsump1950")
   usc <- as.data.frame(USConsump1950)
   usc$war <- factor(usc$war, labels = c("no", "yes"))

   ## Example 2.1
   plot(expenditure ~ income, data = usc, type = "n", xlim = c(225, 375), ylim = c(225, 350))
   with(usc, text(income, expenditure, time(USConsump1950)))

   ## single model
   fm <- lm(expenditure ~ income, data = usc)
   summary(fm)

   ## different intercepts for war yes/no
   fm2 <- lm(expenditure ~ income + war, data = usc)
   summary(fm2)

   ## compare
   anova(fm, fm2)

   ## visualize
   abline(fm, lty = 3)                                   
   abline(coef(fm2)[1:2])                                
   abline(sum(coef(fm2)[c(1, 3)]), coef(fm2)[2], lty = 2)

   ## Example 3.2
   summary(fm)$r.squared
   summary(lm(expenditure ~ income, data = usc, subset = war == "no"))$r.squared
   summary(fm2)$r.squared
