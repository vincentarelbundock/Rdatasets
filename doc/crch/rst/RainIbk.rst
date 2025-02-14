.. container::

   .. container::

      ======= ===============
      RainIbk R Documentation
      ======= ===============

      .. rubric:: Precipitation Observations and Forecasts for Innsbruck
         :name: precipitation-observations-and-forecasts-for-innsbruck

      .. rubric:: Description
         :name: description

      Accumulated 5-8 days precipitation amount for Innsbruck. Data
      includes GEFS reforecasts (Hamill et al. 2013) and observations
      from SYNOP station Innsbruck Airport (11120) from 2000-01-01 to
      2013-09-17.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("RainIbk", package = "crch")

      .. rubric:: Format
         :name: format

      A data frame with 4977 rows. The first column (``rain``) are 3
      days accumulated precipitation amount observations, Columns 2-12
      (``rainfc``) are 5-8 days accumulated precipitation amount
      forecasts from the individual ensemble members.

      .. rubric:: Source
         :name: source

      Observations: https://www.ogimet.com/synops.phtml.en

      Reforecasts: https://psl.noaa.gov/forecasts/reforecast2/

      .. rubric:: References
         :name: references

      Hamill TM, Bates GT, Whitaker JS, Murray DR, Fiorino M, Galarneau
      Jr TJ, Zhu Y, Lapenta W (2013). NOAA's Second-Generation Global
      Medium-Range Ensemble Reforecast Data Set. *Bulletin of the
      American Meteorological Society*, **94**\ (10), 1553-1565.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Spread skill relationship ##

         ## load and prepare data
         data("RainIbk", package = "crch")

         ## mean and standard deviation of square root transformed ensemble forecasts
         RainIbk$sqrtensmean <- 
           apply(sqrt(RainIbk[,grep('^rainfc',names(RainIbk))]), 1, mean)
         RainIbk$sqrtenssd <- 
           apply(sqrt(RainIbk[,grep('^rainfc',names(RainIbk))]),  1, sd)

         ## quintiles of sqrtenssd
         sdcat <- cut(RainIbk$sqrtenssd, c(-Inf, quantile(RainIbk$sqrtenssd, 
           seq(0.2,0.8,0.2)), Inf), labels = c(1:5))

         ## mean forecast errors for each quintile
         m <- NULL
         for(i in levels(sdcat)) {
           m <- c(m, mean((sqrt(RainIbk$rain)[sdcat == i] -
           RainIbk$sqrtensmean[sdcat == i])^2, na.rm = TRUE))
         }

         ## plot
         boxplot((sqrt(rain) - sqrtensmean)^2~sdcat, RainIbk, 
           xlab = "Quintile of ensemble standard deviation", 
           ylab = "mean squared error", main = "Spread skill relationship")
