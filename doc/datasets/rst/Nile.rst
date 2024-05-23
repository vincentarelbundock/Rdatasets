.. container::

   .. container::

      ==== ===============
      Nile R Documentation
      ==== ===============

      .. rubric:: Flow of the River Nile
         :name: flow-of-the-river-nile

      .. rubric:: Description
         :name: description

      Measurements of the annual flow of the river Nile at Aswan
      (formerly ``Assuan``), 1871–1970, in ``10^8 m^3``, “with apparent
      changepoint near 1898” (Cobb(1978), Table 1, p.249).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         Nile

      .. rubric:: Format
         :name: format

      A time series of length 100.

      .. rubric:: Source
         :name: source

      Durbin, J. and Koopman, S. J. (2001). *Time Series Analysis by
      State Space Methods*. Oxford University Press.

      .. rubric:: References
         :name: references

      Balke, N. S. (1993). Detecting level shifts in time series.
      *Journal of Business and Economic Statistics*, **11**, 81–92.
      `doi:10.2307/1391308 <https://doi.org/10.2307/1391308>`__.

      Cobb, G. W. (1978). The problem of the Nile: conditional solution
      to a change-point problem. *Biometrika* **65**, 243–51.
      `doi:10.2307/2335202 <https://doi.org/10.2307/2335202>`__.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         require(stats); require(graphics)
         par(mfrow = c(2, 2))
         plot(Nile)
         acf(Nile)
         pacf(Nile)
         ar(Nile) # selects order 2
         cpgram(ar(Nile)$resid)
         par(mfrow = c(1, 1))
         arima(Nile, c(2, 0, 0))

         ## Now consider missing values, following Durbin & Koopman
         NileNA <- Nile
         NileNA[c(21:40, 61:80)] <- NA
         arima(NileNA, c(2, 0, 0))
         plot(NileNA)
         pred <-
            predict(arima(window(NileNA, 1871, 1890), c(2, 0, 0)), n.ahead = 20)
         lines(pred$pred, lty = 3, col = "red")
         lines(pred$pred + 2*pred$se, lty = 2, col = "blue")
         lines(pred$pred - 2*pred$se, lty = 2, col = "blue")
         pred <-
            predict(arima(window(NileNA, 1871, 1930), c(2, 0, 0)), n.ahead = 20)
         lines(pred$pred, lty = 3, col = "red")
         lines(pred$pred + 2*pred$se, lty = 2, col = "blue")
         lines(pred$pred - 2*pred$se, lty = 2, col = "blue")

         ## Structural time series models
         par(mfrow = c(3, 1))
         plot(Nile)
         ## local level model
         (fit <- StructTS(Nile, type = "level"))
         lines(fitted(fit), lty = 2)              # contemporaneous smoothing
         lines(tsSmooth(fit), lty = 2, col = 4)   # fixed-interval smoothing
         plot(residuals(fit)); abline(h = 0, lty = 3)
         ## local trend model
         (fit2 <- StructTS(Nile, type = "trend")) ## constant trend fitted
         pred <- predict(fit, n.ahead = 30)
         ## with 50% confidence interval
         ts.plot(Nile, pred$pred,
                 pred$pred + 0.67*pred$se, pred$pred -0.67*pred$se)

         ## Now consider missing values
         plot(NileNA)
         (fit3 <- StructTS(NileNA, type = "level"))
         lines(fitted(fit3), lty = 2)
         lines(tsSmooth(fit3), lty = 3)
         plot(residuals(fit3)); abline(h = 0, lty = 3)
