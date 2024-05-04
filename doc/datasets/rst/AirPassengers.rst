.. container::

   .. container::

      ============= ===============
      AirPassengers R Documentation
      ============= ===============

      .. rubric:: Monthly Airline Passenger Numbers 1949-1960
         :name: monthly-airline-passenger-numbers-1949-1960

      .. rubric:: Description
         :name: description

      The classic Box & Jenkins airline data. Monthly totals of
      international airline passengers, 1949 to 1960.

      .. rubric:: Usage
         :name: usage

      ::

         AirPassengers

      .. rubric:: Format
         :name: format

      A monthly time series, in thousands.

      .. rubric:: Source
         :name: source

      Box, G. E. P., Jenkins, G. M. and Reinsel, G. C. (1976) *Time
      Series Analysis, Forecasting and Control.* Third Edition.
      Holden-Day. Series G.

      .. rubric:: Examples
         :name: examples

      ::

         ## The classic 'airline model', by full ML
         (fit <- arima(log10(AirPassengers), c(0, 1, 1),
                       seasonal = list(order = c(0, 1, 1), period = 12)))
         update(fit, method = "CSS")
         update(fit, x = window(log10(AirPassengers), start = 1954))
         pred <- predict(fit, n.ahead = 24)
         tl <- pred$pred - 1.96 * pred$se
         tu <- pred$pred + 1.96 * pred$se
         ts.plot(AirPassengers, 10^tl, 10^tu, log = "y", lty = c(1, 2, 2))

         ## full ML fit is the same if the series is reversed, CSS fit is not
         ap0 <- rev(log10(AirPassengers))
         attributes(ap0) <- attributes(AirPassengers)
         arima(ap0, c(0, 1, 1), seasonal = list(order = c(0, 1, 1), period = 12))
         arima(ap0, c(0, 1, 1), seasonal = list(order = c(0, 1, 1), period = 12),
               method = "CSS")

         ## Structural Time Series
         ap <- log10(AirPassengers) - 2
         (fit <- StructTS(ap, type = "BSM"))
         par(mfrow = c(1, 2))
         plot(cbind(ap, fitted(fit)), plot.type = "single")
         plot(cbind(ap, tsSmooth(fit)), plot.type = "single")
