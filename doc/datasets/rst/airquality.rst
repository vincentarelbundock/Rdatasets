.. container::

   .. container::

      ========== ===============
      airquality R Documentation
      ========== ===============

      .. rubric:: New York Air Quality Measurements
         :name: new-york-air-quality-measurements

      .. rubric:: Description
         :name: description

      Daily air quality measurements in New York, May to September 1973.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         airquality

      .. rubric:: Format
         :name: format

      A data frame with 153 observations on 6 variables.

      ======== =========== ======= =======================
      ``[,1]`` ``Ozone``   numeric Ozone (ppb)
      ``[,2]`` ``Solar.R`` numeric Solar R (lang)
      ``[,3]`` ``Wind``    numeric Wind (mph)
      ``[,4]`` ``Temp``    numeric Temperature (degrees F)
      ``[,5]`` ``Month``   numeric Month (1--12)
      ``[,6]`` ``Day``     numeric Day of month (1--31)
      ======== =========== ======= =======================

      .. rubric:: Details
         :name: details

      Daily readings of the following air quality values for May 1, 1973
      (a Tuesday) to September 30, 1973.

      -  ``Ozone``: Mean ozone in parts per billion from 1300 to 1500
         hours at Roosevelt Island

      -  ``Solar.R``: Solar radiation in Langleys in the frequency band
         4000–7700 Angstroms from 0800 to 1200 hours at Central Park

      -  ``Wind``: Average wind speed in miles per hour at 0700 and 1000
         hours at LaGuardia Airport

      -  ``Temp``: Maximum daily temperature in degrees Fahrenheit at
         LaGuardia Airport.

      .. rubric:: Source
         :name: source

      The data were obtained from the New York State Department of
      Conservation (ozone data) and the National Weather Service
      (meteorological data).

      .. rubric:: References
         :name: references

      Chambers, J. M., Cleveland, W. S., Kleiner, B. and Tukey, P. A.
      (1983) *Graphical Methods for Data Analysis*. Belmont, CA:
      Wadsworth.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         require(graphics)
         pairs(airquality, panel = panel.smooth, main = "airquality data")
