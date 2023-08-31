.. container::

   ========= ===============
   stocks_18 R Documentation
   ========= ===============

   .. rubric:: Monthly Returns for a few stocks
      :name: stocks_18

   .. rubric:: Description
      :name: description

   Monthly return data for a few stocks, which covers stock prices from
   November 2015 through October 2018.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      stocks_18

   .. rubric:: Format
      :name: format

   A data frame with 36 observations on the following 3 variables.

   date
      First day of the month corresponding to the returns.

   goog
      Google stock price change.

   cat
      Caterpillar stock price change.

   xom
      Exxon Mobil stock price change.

   .. rubric:: Source
      :name: source

   Yahoo! Finance, direct download.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      d <- stocks_18
      dim(d)
      apply(d[, 2:3], 2, mean)
      apply(d[, 2:3], 2, sd)
