.. container::

   ====== ===============
   freeny R Documentation
   ====== ===============

   .. rubric:: Freeny's Revenue Data
      :name: freenys-revenue-data

   .. rubric:: Description
      :name: description

   Freeny's data on quarterly revenue and explanatory variables.

   .. rubric:: Usage
      :name: usage

   ::

      freeny
      freeny.x
      freeny.y

   .. rubric:: Format
      :name: format

   There are three ‘freeny’ data sets.

   ``freeny.y`` is a time series with 39 observations on quarterly
   revenue from (1962,2Q) to (1971,4Q).

   ``freeny.x`` is a matrix of explanatory variables. The columns are
   ``freeny.y`` lagged 1 quarter, price index, income level, and market
   potential.

   Finally, ``freeny`` is a data frame with variables ``y``,
   ``lag.quarterly.revenue``, ``price.index``, ``income.level``, and
   ``market.potential`` obtained from the above two data objects.

   .. rubric:: Source
      :name: source

   A. E. Freeny (1977) *A Portable Linear Regression Package with Test
   Programs*. Bell Laboratories memorandum.

   .. rubric:: References
      :name: references

   Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) *The New S
   Language*. Wadsworth & Brooks/Cole.

   .. rubric:: Examples
      :name: examples

   ::

      require(stats); require(graphics)
      summary(freeny)
      pairs(freeny, main = "freeny data")
      # gives warning: freeny$y has class "ts"

      summary(fm1 <- lm(y ~ ., data = freeny))
      opar <- par(mfrow = c(2, 2), oma = c(0, 0, 1.1, 0),
                  mar = c(4.1, 4.1, 2.1, 1.1))
      plot(fm1)
      par(opar)
