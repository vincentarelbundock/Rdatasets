.. container::

   ======== ===============
   pressure R Documentation
   ======== ===============

   .. rubric:: Vapor Pressure of Mercury as a Function of Temperature
      :name: vapor-pressure-of-mercury-as-a-function-of-temperature

   .. rubric:: Description
      :name: description

   Data on the relation between temperature in degrees Celsius and vapor
   pressure of mercury in millimeters (of mercury).

   .. rubric:: Usage
      :name: usage

   ::

      pressure

   .. rubric:: Format
      :name: format

   A data frame with 19 observations on 2 variables.

   ===== =========== ======= ===================
   [, 1] temperature numeric temperature (deg C)
   [, 2] pressure    numeric pressure (mm)
   ===== =========== ======= ===================

   .. rubric:: Source
      :name: source

   Weast, R. C., ed. (1973) *Handbook of Chemistry and Physics*. CRC
   Press.

   .. rubric:: References
      :name: references

   McNeil, D. R. (1977) *Interactive Data Analysis*. New York: Wiley.

   .. rubric:: Examples
      :name: examples

   ::

      require(graphics)
      plot(pressure, xlab = "Temperature (deg C)",
           ylab = "Pressure (mm of Hg)",
           main = "pressure data: Vapor Pressure of Mercury")
      plot(pressure, xlab = "Temperature (deg C)",  log = "y",
           ylab = "Pressure (mm of Hg)",
           main = "pressure data: Vapor Pressure of Mercury")
