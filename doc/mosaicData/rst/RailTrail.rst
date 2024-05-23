.. container::

   .. container::

      ========= ===============
      RailTrail R Documentation
      ========= ===============

      .. rubric:: Volume of Users of a Rail Trail
         :name: volume-of-users-of-a-rail-trail

      .. rubric:: Description
         :name: description

      The Pioneer Valley Planning Commission (PVPC) collected data north
      of Chestnut Street in Florence, MA for ninety days from April 5,
      2005 to November 15, 2005. Data collectors set up a laser sensor,
      with breaks in the laser beam recording when a rail-trail user
      passed the data collection station.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(RailTrail)

      .. rubric:: Format
         :name: format

      A data frame with 90 observations on the following variables.

      ``hightemp``
         daily high temperature (in degrees Fahrenheit)

      ``lowtemp``
         daily low temperature (in degrees Fahrenheit)

      ``avgtemp``
         average of daily low and daily high temperature (in degrees
         Fahrenheit)

      ``spring``
         indicator of whether the season was Spring

      ``summer``
         indicator of whether the season was Summer

      ``fall``
         indicator of whether the season was Fall

      ``cloudcover``
         measure of cloud cover (in oktas)

      ``precip``
         measure of precipitation (in inches)

      ``volume``
         estimated number of trail users that day (number of breaks
         recorded)

      ``weekday``
         logical indicator of whether the day was a non-holiday weekday

      ``dayType``
         one of "weekday" or "weekend"

      .. rubric:: Details
         :name: details

      There is a potential for error when two users trigger the infrared
      beam at exactly the same time since the counter would only logs
      one of the crossings. The collectors left the motion detector out
      during the winter, but because the counter drops data when the
      temperature falls below 14 degrees Fahrenheit, there is no data
      for the cold winter months.

      .. rubric:: Source
         :name: source

      Pioneer Valley Planning Commission

      .. rubric:: References
         :name: references

      http://www.fvgreenway.org/pdfs/Northampton-Bikepath-Volume-Counts%20_05_LTA.pdf

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(RailTrail)
