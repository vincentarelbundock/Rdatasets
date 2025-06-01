.. container::

   .. container::

      ========== ===============
      weather_WU R Documentation
      ========== ===============

      .. rubric:: Weather Data for 2 Australian Cities
         :name: weather-data-for-2-australian-cities

      .. rubric:: Description
         :name: description

      A sub-sample of daily weather information from the weatherAUS data
      in the rattle package for two Australian cities, Wollongong and
      Uluru. The weather_australia data in the bayesrules package
      combines this data with a third city

      .. rubric:: Usage
         :name: usage

      .. code:: R

         weather_WU

      .. rubric:: Format
         :name: format

      A data frame with 200 daily observations and 22 variables from 2
      Australian weather stations:

      location
         one of two weather stations

      mintemp
         minimum temperature (degrees Celsius)

      maxtemp
         maximum temperature (degrees Celsius)

      rainfall
         rainfall (mm)

      windgustdir
         direction of strongest wind gust

      windgustspeed
         speed of strongest wind gust (km/h)

      winddir9am
         direction of wind gust at 9am

      winddir3pm
         direction of wind gust at 3pm

      windspeed9am
         wind speed at 9am (km/h)

      windspeed3pm
         wind speed at 3pm (km/h)

      humidity9am
         humidity level at 9am (percent)

      humidity3pm
         humidity level at 3pm (percent)

      pressure9am
         atmospheric pressure at 9am (hpa)

      pressure3pm
         atmospheric pressure at 3pm (hpa)

      temp9am
         temperature at 9am (degrees Celsius)

      temp3pm
         temperature at 3pm (degrees Celsius)

      raintoday
         whether or not it rained today (Yes or No)

      risk_mm
         the amount of rain today (mm)

      raintomorrow
         whether or not it rained the next day (Yes or No)

      year
         the year of the date

      month
         the month of the date

      day_of_year
         the day of the year

      .. rubric:: Source
         :name: source

      Data in the original weatherAUS data set were obtained from
      https://www.bom.gov.au/climate/data. Copyright Commonwealth of
      Australia 2010, Bureau of Meteorology.
