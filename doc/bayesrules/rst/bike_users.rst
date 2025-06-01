.. container::

   .. container::

      ========== ===============
      bike_users R Documentation
      ========== ===============

      .. rubric:: Capital Bikeshare Bike Ridership (Registered and
         Casual Riders)
         :name: capital-bikeshare-bike-ridership-registered-and-casual-riders

      .. rubric:: Description
         :name: description

      Data on ridership among registered members and casual users of the
      Capital Bikeshare service in Washington, D.C..

      .. rubric:: Usage
         :name: usage

      .. code:: R

         bike_users

      .. rubric:: Format
         :name: format

      A data frame with 534 daily observations, 267 each for registered
      riders and casual riders, and 13 variables:

      date
         date of observation

      season
         fall, spring, summer, or winter

      year
         the year of the date

      month
         the month of the date

      day_of_week
         the day of the week

      weekend
         whether or not the date falls on a weekend (TRUE or FALSE)

      holiday
         whether or not the date falls on a holiday (yes or no)

      temp_actual
         raw temperature (degrees Fahrenheit)

      temp_feel
         what the temperature feels like (degrees Fahrenheit)

      humidity
         humidity level (percentage)

      windspeed
         wind speed (miles per hour)

      weather_cat
         weather category (categ1 = pleasant, categ2 = moderate, categ3
         = severe)

      user
         rider type (casual or registered)

      rides
         number of bikeshare rides

      .. rubric:: Source
         :name: source

      Fanaee-T, Hadi and Gama, Joao (2013). Event labeling combining
      ensemble detectors and background knowledge. Progress in
      Artificial Intelligence.
      https://archive.ics.uci.edu/ml/datasets/Bike+Sharing+Dataset/
