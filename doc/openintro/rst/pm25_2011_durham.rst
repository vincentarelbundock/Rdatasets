.. container::

   .. container::

      ================ ===============
      pm25_2011_durham R Documentation
      ================ ===============

      .. rubric:: Air quality for Durham, NC
         :name: air-quality-for-durham-nc

      .. rubric:: Description
         :name: description

      Daily air quality is measured by the air quality index (AQI)
      reported by the Environmental Protection Agency in 2011.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         pm25_2011_durham

      .. rubric:: Format
         :name: format

      A data frame with 449 observations on the following 20 variables.

      date
         Date

      aqs_site_id
         The numeric site ID.

      poc
         A numeric vector, the Parameter Occurance Code.

      daily_mean_pm2_5_concentration
         A numeric vector with the average daily concentration of fine
         particulates, or particulate matter 2.5.

      units
         A character vector with value ``ug/m3 LC``.

      daily_aqi_value
         A numeric vector with the daily air quality index.

      daily_obs_count
         A numeric vector.

      percent_complete
         A numeric vector.

      aqs_parameter_code
         A numeric vector.

      aqs_parameter_desc
         A factor with levels ``PM2.5 - Local Conditions`` and
         ``Acceptable PM2.5 AQI & Speciation Mass``.

      cbsa_code
         A numeric vector.

      cbsa_name
         A character vector with value ``Durham, NC``.

      state_code
         A numeric vector.

      state
         A character vector with value ``North Carolina``.

      county_code
         A numeric vector.

      county
         A character vector with value ``Durham``.

      site_latitude
         A numeric vector of the latitude.

      site_longitude
         A numeric vector of the longitude.

      csa_code
         a numeric vector

      csa_name
         a factor with levels ``Raleigh-Durham-Cary, NC``

      .. rubric:: Source
         :name: source

      US Environmental Protection Agency, AirData, 2011.
      http://www3.epa.gov/airdata/ad_data_daily.html

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(ggplot2)

         ggplot(pm25_2011_durham, aes(x = date, y = daily_mean_pm2_5_concentration, group = 1)) +
           geom_line()
