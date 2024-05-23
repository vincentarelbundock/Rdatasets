.. container::

   .. container::

      ============== ===============
      JohnsonJohnson R Documentation
      ============== ===============

      .. rubric:: Quarterly Earnings per Johnson & Johnson Share
         :name: quarterly-earnings-per-johnson-johnson-share

      .. rubric:: Description
         :name: description

      Quarterly earnings (dollars) per Johnson & Johnson share 1960–80.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         JohnsonJohnson

      .. rubric:: Format
         :name: format

      A quarterly time series

      .. rubric:: Source
         :name: source

      Shumway, R. H. and Stoffer, D. S. (2000) *Time Series Analysis and
      its Applications*. Second Edition. Springer. Example 1.1.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         require(stats); require(graphics)
         JJ <- log10(JohnsonJohnson)
         plot(JJ)
         ## This example gives a possible-non-convergence warning on some
         ## platforms, but does seem to converge on x86 Linux and Windows.
         (fit <- StructTS(JJ, type = "BSM"))
         tsdiag(fit)
         sm <- tsSmooth(fit)
         plot(cbind(JJ, sm[, 1], sm[, 3]-0.5), plot.type = "single",
              col = c("black", "green", "blue"))
         abline(h = -0.5, col = "grey60")

         monthplot(fit)
