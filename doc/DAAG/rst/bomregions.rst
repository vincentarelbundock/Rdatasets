.. container::

   .. container::

      ============== ===============
      bomregions2021 R Documentation
      ============== ===============

      .. rubric:: Australian and Related Historical Annual Climate Data,
         by Region
         :name: australian-and-related-historical-annual-climate-data-by-region

      .. rubric:: Description
         :name: description

      Australian regional temperature data, Australian regional rainfall
      data, and Annual SOI, are given for the years 1900-2021. The
      regional rainfall and temperature data are area-weighted averages
      for the respective regions. The Southern Oscillation Index (SOI)
      is the difference in barometric pressure at sea level between
      Tahiti and Darwin.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("bomregions2021")

      .. rubric:: Format
         :name: format

      These data frames contains the following columns:

      Year
         Year

      seAVt
         Southeastern region average temperature (degrees C)

      southAVt
         Southern temperature

      eastAVt
         Eastern temperature

      northAVt
         Northern temperature

      swAVt
         Southwestern temperature

      qldAVt
         temperature

      nswAVt
         temperature

      ntAVt
         temperature

      saAVt
         temperature

      tasAVt
         temperature

      vicAVt
         temperature

      waAVt
         temperature

      mdbAVt
         Murray-Darling basin temperature

      ausAVt
         Australian average temperature, area-weighted mean

      seRain
         Southeast Australian annual rainfall (mm)

      southRain
         Southern rainfall

      eastRain
         Eastern rainfall

      northRain
         Northern rainfall

      swRain
         Southwest rainfall

      qldRain
         Queensland rainfall

      nswRain
         NSW rainfall

      ntRain
         Northern Territory rainfall

      saRain
         South Australian rainfall

      tasRain
         Tasmanian rainfall

      vicRain
         Victorian rainfall

      waRain
         West Australian rainfall

      mdbRain
         Murray-Darling basin rainfall

      ausRain
         Australian average rainfall, area weighted

      SOI
         Annual average Southern Oscillation Index

      sunspot
         Yearly mean sunspot number

      co2mlo
         Moana Loa CO2 concentrations, from 1959

      co2law
         Moana Loa CO2 concentrations, 1900 to 1978

      CO2
         CO2 concentrations, composite series

      avDMI
         Annual average Dipole Mode Index, for the Indian Ocean Dipole,
         from 1950

      .. rubric:: Source
         :name: source

      Australian Bureau of Meteorology web pages:

      Go to the url http://www.bom.gov.au/climate/change/, choose
      timeseries to display, then click "Download data"

      For the SOI data, go to the url
      http://www.bom.gov.au/climate/enso/.

      The CO2 series ``co2law``, for Law Dome ice core data. is from
      https://data.ess-dive.lbl.gov/portals/CDIAC/.

      The Moana Loa CO2 series ``co2mlo`` is from Dr. Pieter Tans,
      NOAA/ESRL (https://gml.noaa.gov/ccgg/trends/)

      The series ``CO2`` is a composite series, obtained by adding 0.46
      to the Law data for 1900 to 1958, then following this with the
      Moana Loa data that is avaiable from 1959. The addition of 0.46
      brings the average of the Law data into agreement with that for
      the Moana Loa data for the period 1959 to 1968.

      The yearly mean sunspot number is a subset of one of several
      sunspot series that are available from WDC-SILSO, Royal
      Observatory of Belgium, Brussels.
      https://www.sidc.be/silso/datafiles/

      The dipole mode index data are from
      https://ds.data.jma.go.jp/tcc/tcc/products/elnino/index/Readme_iod.txt.
      Note also https://stateoftheocean.osmc.noaa.gov/sur/ind/dmi.php,
      which has details of several other such series.

      .. rubric:: References
         :name: references

      D.M. Etheridge, L.P. Steele, R.L. Langenfelds, R.J. Francey, J.-M.
      Barnola and V.I. Morgan, 1998, *Historical CO2 records from the
      Law Dome DE08, DE08-2, and DSS ice cores*, in Trends: A Compendium
      of Data on Global Change, on line at Carbon Dioxide Information
      Analysis Center, Oak Ridge National Laboratory, U.S. Department of
      Energy, Oak Ridge, Tenn., U.S.A.

      Lavery, B., Joung, G. and Nicholls, N. 1997. An extended
      high-quality historical rainfall dataset for Australia. Australian
      Meteorological Magazine, 46, 27-38.

      Nicholls, N., Lavery, B., Frederiksen, C.\\ and Drosdowsky, W.
      1996. Recent apparent changes in relationships between the El Nino
      – southern oscillation and Australian rainfall and temperature.
      Geophysical Research Letters 23: 3357-3360.

      SIDC-team, World Data Center for the Sunspot Index, Royal
      Observatory of Belgium, Monthly Report on the International
      Sunspot Number, online catalogue of the sunspot index:
      https://www.sidc.be/silso/datafiles

      .. rubric:: Examples
         :name: examples

      .. code:: R

         plot(ts(bomregions2021[, c("mdbRain","SOI")], start=1900),
              panel=function(y,...)panel.smooth(bomregions2021$Year, y,...))
         avrain <- bomregions2021[,"mdbRain"]
         xbomsoi <- with(bomregions2021, data.frame(Year=Year, SOI=SOI,
                         cuberootRain=avrain^0.33))
         xbomsoi$trendSOI <- lowess(xbomsoi$SOI, f=0.1)$y
         xbomsoi$trendRain <- lowess(xbomsoi$cuberootRain, f=0.1)$y
         xbomsoi$detrendRain <-
           with(xbomsoi, cuberootRain - trendRain + mean(trendRain))
         xbomsoi$detrendSOI <-
           with(xbomsoi, SOI - trendSOI + mean(trendSOI))
         ## Plot time series avrain and SOI: ts object xbomsoi
         plot(ts(xbomsoi[, c("cuberootRain","SOI")], start=1900),
              panel=function(y,...)panel.smooth(xbomsoi$Year, y,...),
              xlab = "Year", main="", ylim=list(c(250, 800),c(-20,25)))
         par(mfrow=c(1,2))
         rainpos <- pretty(xbomsoi$cuberootRain^3, 6)
         plot(cuberootRain ~ SOI, data = xbomsoi,
              ylab = "Rainfall (cube root scale)", yaxt="n")
         axis(2, at = rainpos^0.33, labels=paste(rainpos))
         mtext(side = 3, line = 0.8, "A", adj = -0.025)
         with(xbomsoi, lines(lowess(cuberootRain ~ SOI, f=0.75)))
         plot(detrendRain ~ detrendSOI, data = xbomsoi,
              xlab="Detrended SOI", ylab = "Detrended rainfall", yaxt="n")
         axis(2, at = rainpos^0.33, labels=paste(rainpos))
         with(xbomsoi, lines(lowess(detrendRain ~ detrendSOI, f=0.75)))
         mtext(side = 3, line = 0.8, "B", adj = -0.025)
         par(mfrow=c(1,1))
