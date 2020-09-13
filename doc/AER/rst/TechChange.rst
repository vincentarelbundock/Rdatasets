========== ===============
TechChange R Documentation
========== ===============

Technological Change Data
-------------------------

Description
~~~~~~~~~~~

US time series data, 1909–1949.

Usage
~~~~~

::

   data("TechChange")

Format
~~~~~~

An annual multiple time series from 1909 to 1949 with 3 variables.

output
   Output.

clr
   Capital/labor ratio.

technology
   Index of technology.

Source
~~~~~~

Online complements to Greene (2003), Table F7.2.

http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

References
~~~~~~~~~~

Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper Saddle
River, NJ: Prentice Hall.

Solow, R. (1957). Technical Change and the Aggregate Production
Function. *Review of Economics and Statistics*, **39**, 312–320.

See Also
~~~~~~~~

``Greene2003``

Examples
~~~~~~~~

::

   data("TechChange")

   ## Greene (2003)
   ## Exercise 7.1
   fm1 <- lm(I(output/technology) ~ log(clr), data = TechChange)
   fm2 <- lm(I(output/technology) ~ I(1/clr), data = TechChange)
   fm3 <- lm(log(output/technology) ~ log(clr), data = TechChange)
   fm4 <- lm(log(output/technology) ~ I(1/clr), data = TechChange)

   ## Exercise 7.2 (a) and (c)
   plot(I(output/technology) ~ clr, data = TechChange)

   library("strucchange")
   sctest(I(output/technology) ~ log(clr), data = TechChange, type = "Chow", point = c(1942, 1))
