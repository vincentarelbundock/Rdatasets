.. container::

   .. container::

      ============== ===============
      UKDriverDeaths R Documentation
      ============== ===============

      .. rubric:: Road Casualties in Great Britain 1969–84
         :name: road-casualties-in-great-britain-196984

      .. rubric:: Description
         :name: description

      ``UKDriverDeaths`` is a time series giving the monthly totals of
      car drivers in Great Britain killed or seriously injured Jan 1969
      to Dec 1984. Compulsory wearing of seat belts was introduced on 31
      Jan 1983.

      ``Seatbelts`` is more information on the same problem.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         UKDriverDeaths
         Seatbelts

      .. rubric:: Format
         :name: format

      ``Seatbelts`` is a multiple time series, with columns

      ``DriversKilled``
         car drivers killed.

      ``drivers``
         same as ``UKDriverDeaths``.

      ``front``
         front-seat passengers killed or seriously injured.

      ``rear``
         rear-seat passengers killed or seriously injured.

      ``kms``
         distance driven.

      ``PetrolPrice``
         petrol price.

      ``VanKilled``
         number of van (‘light goods vehicle’) drivers.

      ``law``
         0/1: was the law in effect that month?

      .. rubric:: Source
         :name: source

      Harvey, A.C. (1989). *Forecasting, Structural Time Series Models
      and the Kalman Filter*. Cambridge University Press, pp. 519–523.

      Durbin, J. and Koopman, S. J. (2001). *Time Series Analysis by
      State Space Methods*. Oxford University Press.

      .. rubric:: References
         :name: references

      Harvey, A. C. and Durbin, J. (1986). The effects of seat belt
      legislation on British road casualties: A case study in structural
      time series modelling. *Journal of the Royal Statistical Society*
      series A, **149**, 187–227.
      `doi:10.2307/2981553 <https://doi.org/10.2307/2981553>`__.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         require(stats); require(graphics)
         ## work with pre-seatbelt period to identify a model, use logs
         work <- window(log10(UKDriverDeaths), end = 1982+11/12)
         par(mfrow = c(3, 1))
         plot(work); acf(work); pacf(work)
         par(mfrow = c(1, 1))
         (fit <- arima(work, c(1, 0, 0), seasonal = list(order = c(1, 0, 0))))
         z <- predict(fit, n.ahead = 24)
         ts.plot(log10(UKDriverDeaths), z$pred, z$pred+2*z$se, z$pred-2*z$se,
                 lty = c(1, 3, 2, 2), col = c("black", "red", "blue", "blue"))

         ## now see the effect of the explanatory variables
         X <- Seatbelts[, c("kms", "PetrolPrice", "law")]
         X[, 1] <- log10(X[, 1]) - 4
         arima(log10(Seatbelts[, "drivers"]), c(1, 0, 0),
               seasonal = list(order = c(1, 0, 0)), xreg = X)
