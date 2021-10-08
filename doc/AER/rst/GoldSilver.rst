.. container::

   ========== ===============
   GoldSilver R Documentation
   ========== ===============

   .. rubric:: Gold and Silver Prices
      :name: gold-and-silver-prices

   .. rubric:: Description
      :name: description

   Time series of gold and silver prices.

   .. rubric:: Usage
      :name: usage

   ::

      data("GoldSilver")

   .. rubric:: Format
      :name: format

   A daily multiple time series from 1977-12-30 to 2012-12-31 (of class
   ``"zoo"`` with ``"Date"`` index).

   gold
      spot price for gold,

   silver
      spot price for silver.

   .. rubric:: Source
      :name: source

   Online complements to Franses, van Dijk and Opschoor (2014).

   http://www.cambridge.org/us/academic/subjects/economics/econometrics-statistics-and-mathematical-economics/time-series-models-business-and-economic-forecasting-2nd-edition

   .. rubric:: References
      :name: references

   Franses, P.H., van Dijk, D. and Opschoor, A. (2014). *Time Series
   Models for Business and Economic Forecasting*, 2nd ed. Cambridge, UK:
   Cambridge University Press.

   .. rubric:: Examples
      :name: examples

   ::

      data("GoldSilver", package = "AER")

      ## p.31, daily returns
      lgs <- log(GoldSilver)
      plot(lgs[, c("silver", "gold")])

      dlgs <- 100 * diff(lgs) 
      plot(dlgs[, c("silver", "gold")])

      ## p.31, monthly log prices
      lgs7812 <- window(lgs, start = as.Date("1978-01-01"))
      lgs7812m <- aggregate(lgs7812, as.Date(as.yearmon(time(lgs7812))), mean)
      plot(lgs7812m, plot.type = "single", lty = 1:2, lwd = 2)

      ## p.93, empirical ACF of absolute daily gold returns, 1978-01-01 - 2012-12-31
      absgret <- abs(100 * diff(lgs7812[, "gold"]))
      sacf <- acf(absgret, lag.max = 200, na.action = na.exclude, plot = FALSE)
      plot(1:201, sacf$acf, ylim = c(0.04, 0.28), type = "l", xaxs = "i", yaxs = "i", las = 1)


      ## ARFIMA(0,1,1) model, eq. (4.44)
      library("longmemo")
      WhittleEst(absgret, model = "fARIMA", p = 0, q = 1, start = list(H = 0.3, MA = .25))

      library("forecast")
      arfima(as.vector(absgret), max.p = 0, max.q = 1)


      ## p.254: VAR(2), monthly data for 1986.1 - 2012.12
      library("vars")

      lgs8612 <- window(lgs, start = as.Date("1986-01-01"))
      dim(lgs8612)

      lgs8612m <- aggregate(lgs8612, as.Date(as.yearmon(time(lgs8612))), mean)
      plot(lgs8612m)
      dim(lgs8612m)

      VARselect(lgs8612m, 5)
      gs2 <- VAR(lgs8612m, 2)

      summary(gs2)
      summary(gs2)$covres

      ## ACF of residuals, p.256
      acf(resid(gs2), 2, plot = FALSE)


      ## Figure 9.1, p.260 (somewhat different)
      plot(irf(gs2, impulse = "gold", n.ahead = 50), ylim = c(-0.02, 0.1))
      plot(irf(gs2, impulse = "silver", n.ahead = 50), ylim = c(-0.02, 0.1))


      ## Table 9.2, p.261
      fevd(gs2)

      ## p.266
      ls <- lgs8612[, "silver"]
      lg <- lgs8612[, "gold"]

      gsreg <- lm(lg ~ ls)
      summary(gsreg)
      sgreg <- lm(ls ~ lg)
      summary(sgreg)

      library("tseries")
      adf.test(resid(gsreg), k = 0)
      adf.test(resid(sgreg), k = 0)
