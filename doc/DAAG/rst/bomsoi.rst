.. container::

   ====== ===============
   bomsoi R Documentation
   ====== ===============

   .. rubric:: Southern Oscillation Index Data
      :name: southern-oscillation-index-data

   .. rubric:: Description
      :name: description

   The Southern Oscillation Index (SOI) is the difference in barometric
   pressure at sea level between Tahiti and Darwin. Annual SOI and
   Australian rainfall data, for the years 1900-2005, are given.
   Australia's annual mean rainfall is an area-weighted average of the
   total annual precipitation at approximately 370 rainfall stations
   around the country.

   .. rubric:: Usage
      :name: usage

   ::

      bomsoi

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   Year
      a numeric vector

   Jan
      average January SOI values for each year

   Feb
      average February SOI values for each year

   Mar
      average March SOI values for each year

   Apr
      average April SOI values for each year

   May
      average May SOI values for each year

   Jun
      average June SOI values for each year

   Jul
      average July SOI values for each year

   Aug
      average August SOI values for each year

   Sep
      average September SOI values for each year

   Oct
      average October SOI values for each year

   Nov
      average November SOI values for each year

   Dec
      average December SOI values for each year

   SOI
      a numeric vector consisting of average annual SOI values

   avrain
      a numeric vector consisting of a weighted average annual rainfall
      at a large number of Australian sites

   NTrain
      Northern Territory rain

   northRain
      north rain

   seRain
      southeast rain

   eastRain
      east rain

   southRain
      south rain

   swRain
      southwest rain

   .. rubric:: Source
      :name: source

   Australian Bureau of Meteorology web pages:

   http://www.bom.gov.au/climate/change/rain02.txt and
   http://www.bom.gov.au/climate/current/soihtm1.shtml

   .. rubric:: References
      :name: references

   Nicholls, N., Lavery, B., Frederiksen, C.\\ and Drosdowsky, W. 1996.
   Recent apparent changes in relationships between the El Nino –
   southern oscillation and Australian rainfall and temperature.
   Geophysical Research Letters 23: 3357-3360.

   .. rubric:: Examples
      :name: examples

   ::

       
      plot(ts(bomsoi[, 15:14], start=1900),
           panel=function(y,...)panel.smooth(1900:2005, y,...))
      pause()

      # Check for skewness by comparing the normal probability plots for 
      # different a, e.g.
      par(mfrow = c(2,3))
      for (a in c(50, 100, 150, 200, 250, 300))
      qqnorm(log(bomsoi[, "avrain"] - a))
        # a = 250 leads to a nearly linear plot

      pause()

      par(mfrow = c(1,1))
      plot(bomsoi$SOI, log(bomsoi$avrain - 250), xlab = "SOI",
           ylab = "log(avrain = 250)")
      lines(lowess(bomsoi$SOI)$y, lowess(log(bomsoi$avrain - 250))$y, lwd=2)
        # NB: separate lowess fits against time
      lines(lowess(bomsoi$SOI, log(bomsoi$avrain - 250)))
      pause()

      xbomsoi <-
        with(bomsoi, data.frame(SOI=SOI, cuberootRain=avrain^0.33))
      xbomsoi$trendSOI <- lowess(xbomsoi$SOI)$y
      xbomsoi$trendRain <- lowess(xbomsoi$cuberootRain)$y
      rainpos <- pretty(bomsoi$avrain, 5)
      with(xbomsoi,
           {plot(cuberootRain ~ SOI, xlab = "SOI",
                 ylab = "Rainfall (cube root scale)", yaxt="n")
           axis(2, at = rainpos^0.33, labels=paste(rainpos))
      ## Relative changes in the two trend curves
           lines(lowess(cuberootRain ~ SOI))
           lines(lowess(trendRain ~ trendSOI), lwd=2)
        })
      pause()

      xbomsoi$detrendRain <-
        with(xbomsoi, cuberootRain - trendRain + mean(trendRain))
      xbomsoi$detrendSOI <-
        with(xbomsoi, SOI - trendSOI + mean(trendSOI))
      oldpar <- par(mfrow=c(1,2), pty="s")
      plot(cuberootRain ~ SOI, data = xbomsoi,
           ylab = "Rainfall (cube root scale)", yaxt="n")
      axis(2, at = rainpos^0.33, labels=paste(rainpos))
      with(xbomsoi, lines(lowess(cuberootRain ~ SOI)))
      plot(detrendRain ~ detrendSOI, data = xbomsoi,
        xlab="Detrended SOI", ylab = "Detrended rainfall", yaxt="n")
      axis(2, at = rainpos^0.33, labels=paste(rainpos))
      with(xbomsoi, lines(lowess(detrendRain ~ detrendSOI)))
      pause()

      par(oldpar)
      attach(xbomsoi)
      xbomsoi.ma0 <- arima(detrendRain, xreg=detrendSOI, order=c(0,0,0))
      # ordinary regression model

      xbomsoi.ma12 <- arima(detrendRain, xreg=detrendSOI,
                            order=c(0,0,12))
      # regression with MA(12) errors -- all 12 MA parameters are estimated
      xbomsoi.ma12
      pause()

      xbomsoi.ma12s <- arima(detrendRain, xreg=detrendSOI,
                            seasonal=list(order=c(0,0,1), period=12))
      # regression with seasonal MA(1) (lag 12) errors -- only 1 MA parameter
      # is estimated
      xbomsoi.ma12s
      pause()

      xbomsoi.maSel <- arima(x = detrendRain, order = c(0, 0, 12),
                              xreg = detrendSOI, fixed = c(0, 0, 0,
                              NA, rep(0, 4), NA, 0, NA, NA, NA, NA),
                              transform.pars=FALSE)
      # error term is MA(12) with fixed 0's at lags 1, 2, 3, 5, 6, 7, 8, 10
      # NA's are used to designate coefficients that still need to be estimated
      # transform.pars is set to FALSE, so that MA coefficients are not
      # transformed (see help(arima))

      detach(xbomsoi)
      pause()

      Box.test(resid(lm(detrendRain ~ detrendSOI, data = xbomsoi)),
                type="Ljung-Box", lag=20)

      pause()

      attach(xbomsoi)
       xbomsoi2.maSel <- arima(x = detrendRain, order = c(0, 0, 12),
                               xreg = poly(detrendSOI,2), fixed = c(0,
                               0, 0, NA, rep(0, 4), NA, 0, rep(NA,5)),
                               transform.pars=FALSE)
       xbomsoi2.maSel
      qqnorm(resid(xbomsoi.maSel, type="normalized"))
      detach(xbomsoi)
