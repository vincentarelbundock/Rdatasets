============= ===============
weather_perth R Documentation
============= ===============

Weather Data for Perth, Australia
---------------------------------

Description
~~~~~~~~~~~

A sub-sample of daily weather information on Perth, Australia from the
weatherAUS data in the rattle package.

Usage
~~~~~

.. code:: R

   weather_perth

Format
~~~~~~

A data frame with 1000 daily observations and 21 variables:

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

Source
~~~~~~

Data in the original weatherAUS data set were obtained from
https://www.bom.gov.au/climate/data/. Copyright Commonwealth of
Australia 2010, Bureau of Meteorology.
