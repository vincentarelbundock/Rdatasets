.. container::

   ================ ===============
   pm25_2011_durham R Documentation
   ================ ===============

   .. rubric:: Air quality for Durham, NC
      :name: air-quality-for-durham-nc

   .. rubric:: Description
      :name: description

   Daily air quality is measured by the air quality index (AQI) reported
   by the Environmental Protection Agency.

   .. rubric:: Usage
      :name: usage

   ::

      pm25_2011_durham

   .. rubric:: Format
      :name: format

   A data frame with 449 observations on the following 20 variables.

   date
      Date

   aqs_site_id
      a factor with levels ``37-063-0015``

   poc
      a numeric vector

   daily_mean_pm2_5_concentration
      a numeric vector

   units
      a factor with levels ``ug/m3 LC``

   daily_aqi_value
      a numeric vector

   daily_obs_count
      a numeric vector

   percent_complete
      a numeric vector

   aqs_parameter_code
      a numeric vector

   aqs_parameter_desc
      a factor with levels ``Acceptable PM2.5 AQI & Speciation Mass``
      ``PM2.5 - Local Conditions``

   csa_code
      a numeric vector

   csa_name
      a factor with levels ``Raleigh-Durham-Cary, NC``

   cbsa_code
      a numeric vector

   cbsa_name
      a factor with levels ``Durham, NC``

   state_code
      a numeric vector

   state
      a factor with levels ``North Carolina``

   county_code
      a numeric vector

   county
      a factor with levels ``Durham``

   site_latitude
      a numeric vector

   site_longitude
      a numeric vector

   .. rubric:: Source
      :name: source

   US Environmental Protection Agency, AirData, 2011.
   http://www3.epa.gov/airdata/ad_data_daily.html

   .. rubric:: Examples
      :name: examples

   ::

      pm25_2011_durham
