.. container::

   .. container::

      ======= ===============
      weather R Documentation
      ======= ===============

      .. rubric:: Hourly weather data
         :name: hourly-weather-data

      .. rubric:: Description
         :name: description

      Hourly meterological data for LGA, JFK and EWR.

      .. rubric:: Usage
         :name: usage

      ::

         weather

      .. rubric:: Format
         :name: format

      A data frame with columns:

      origin
         Weather station. Named ``origin`` to facilitate merging with
         ``flights`` data.

      year, month, day, hour
         Time of recording.

      temp, dewp
         Temperature and dewpoint in F.

      humid
         Relative humidity.

      wind_dir, wind_speed, wind_gust
         Wind direction (in degrees), speed and gust speed (in mph).

      precip
         Precipitation, in inches.

      pressure
         Sea level pressure in millibars.

      visib
         Visibility in miles.

      time_hour
         Date and hour of the recording as a ``POSIXct`` date.

      .. rubric:: Source
         :name: source

      ASOS download from Iowa Environmental Mesonet,
      https://mesonet.agron.iastate.edu/request/download.phtml.
