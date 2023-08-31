.. container::

   ========== ===============
   DutchSales R Documentation
   ========== ===============

   .. rubric:: Dutch Retail Sales Index Data
      :name: DutchSales

   .. rubric:: Description
      :name: description

   Time series of retail sales index in The Netherlands.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("DutchSales")

   .. rubric:: Format
      :name: format

   A monthly univariate time series from 1960(5) to 1995(9).

   .. rubric:: Source
      :name: source

   Online complements to Franses (1998).

   .. rubric:: References
      :name: references

   Franses, P.H. (1998). *Time Series Models for Business and Economic
   Forecasting*. Cambridge, UK: Cambridge University Press.

   .. rubric:: See Also
      :name: see-also

   ``Franses1998``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("DutchSales")
      plot(DutchSales)

      ## EACF tables (Franses 1998, p. 99)
      ctrafo <- function(x) residuals(lm(x ~ factor(cycle(x))))
      ddiff <- function(x) diff(diff(x, frequency(x)), 1)
      eacf <- function(y, lag = 12) {
        stopifnot(all(lag > 0))
        if(length(lag) < 2) lag <- 1:lag
        rval <- sapply(
          list(y = y, dy = diff(y), cdy = ctrafo(diff(y)),
               Dy = diff(y, frequency(y)), dDy = ddiff(y)),
          function(x) acf(x, plot = FALSE, lag.max = max(lag))$acf[lag + 1])
        rownames(rval) <- lag
        return(rval)
      }

      ## Franses (1998), Table 5.3
      round(eacf(log(DutchSales), lag = c(1:18, 24, 36)), digits = 3)
