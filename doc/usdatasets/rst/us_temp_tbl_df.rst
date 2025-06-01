.. container::

   .. container::

      ============== ===============
      us_temp_tbl_df R Documentation
      ============== ===============

      .. rubric:: US Temperature Data
         :name: us-temperature-data

      .. rubric:: Description
         :name: description

      The dataset 'us_temp_tbl_df' contains temperature records from
      various weather stations across the United States, providing both
      maximum and minimum temperature readings. This dataset is
      structured as a tibble for ease of use within the R ecosystem.
      This naming convention helps distinguish this dataset as part of
      the 'usdatasets' package.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(us_temp_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 10,118 rows and 9 columns:

      station
         Character string representing the weather station identifier.

      name
         Character string for the name of the weather station.

      latitude
         Numeric value for the latitude of the weather station.

      longitude
         Numeric value for the longitude of the weather station.

      elevation
         Numeric value for the elevation of the weather station in
         meters.

      date
         Date of the recorded temperature data.

      tmax
         Numeric value for the maximum temperature recorded (in degrees
         Celsius).

      tmin
         Numeric value for the minimum temperature recorded (in degrees
         Celsius).

      year
         Factor representing the year of the recorded data.

      .. rubric:: Source
         :name: source

      National Oceanic and Atmospheric Administration (NOAA).
