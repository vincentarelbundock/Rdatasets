.. container::

   ============= ===============
   UKNonDurables R Documentation
   ============= ===============

   .. rubric:: Consumption of Non-Durables in the UK
      :name: UKNonDurables

   .. rubric:: Description
      :name: description

   Time series of consumption of non-durables in the UK (in 1985
   prices).

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("UKNonDurables")

   .. rubric:: Format
      :name: format

   A quarterly univariate time series from 1955(1) to 1988(4).

   .. rubric:: Source
      :name: source

   Online complements to Franses (1998).

   .. rubric:: References
      :name: references

   Osborn, D.R. (1988). A Survey of Seasonality in UK Macroeconomic
   Variables. *International Journal of Forecasting*, **6**, 327–336.

   Franses, P.H. (1998). *Time Series Models for Business and Economic
   Forecasting*. Cambridge, UK: Cambridge University Press.

   .. rubric:: See Also
      :name: see-also

   ``Franses1998``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("UKNonDurables")
      plot(UKNonDurables)

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

      ## Franses (1998), Table 5.2
      round(eacf(log(UKNonDurables)), digits = 3)

      ## Franses (1998), Equation 5.51
      ## (Franses: sma1 = -0.632 (0.069))
      arima(log(UKNonDurables), c(0, 1, 0), c(0, 1, 1))
