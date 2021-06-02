========= ===============
stocks_18 R Documentation
========= ===============

Monthly Returns for a few stocks
--------------------------------

Description
~~~~~~~~~~~

Monthly return data for a few stocks, which covers stock prices from
November 2015 through October 2018.

Usage
~~~~~

::

   stocks_18

Format
~~~~~~

A data frame with 36 observations on the following 3 variables.

date
   First day of the month corresponding to the returns.

goog
   Google stock price change.

cat
   Caterpillar stock price change.

xom
   Exxon Mobil stock price change.

Source
~~~~~~

Yahoo! Finance, direct download.

Examples
~~~~~~~~

::


   d <- stocks_18
   dim(d)
   apply(d[, 2:3], 2, mean)
   apply(d[, 2:3], 2, sd)

