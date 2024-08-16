.. container::

   .. container::

      ========= ===============
      nyc_bikes R Documentation
      ========= ===============

      .. rubric:: NYC Citi Bike trips
         :name: nyc-citi-bike-trips

      .. rubric:: Description
         :name: description

      A sample from NYC Citi Bike usage of 10 bikes throughout 2018. The
      data includes event data on each trip, including the trip's start
      and end times and locations. The customer's gender, birth year and
      bike usage type is also available.

      .. rubric:: Format
         :name: format

      Time series of class ``tsibble``

      .. rubric:: Details
         :name: details

      ``nyc_bikes`` is a ``tsibble`` containing event data, the events
      include these details:

      +----------------+----------------------------------------------------+
      | start_time:    | The time and date when the trip was started.       |
      +----------------+----------------------------------------------------+
      | stop_time:     | The time and date when the trip was ended.         |
      +----------------+----------------------------------------------------+
      | start_station: | A unique identifier for the starting bike station. |
      +----------------+----------------------------------------------------+
      | start_lat:     | The latitude of the starting bike station.         |
      +----------------+----------------------------------------------------+
      | start_long:    | The longitude of the starting bike station.        |
      +----------------+----------------------------------------------------+
      | end_station:   | A unique identifier for the destination bike       |
      |                | station.                                           |
      +----------------+----------------------------------------------------+
      | end_lat:       | The latitutde of the destination bike station.     |
      +----------------+----------------------------------------------------+
      | end_long:      | The longitude of the destination bike station.     |
      +----------------+----------------------------------------------------+
      | type:          | The type of trip. A "Customer" has purchased       |
      |                | either a 24-hour or 3-day pass, and a "Subscriber" |
      |                | has purchased an annual subscription.              |
      +----------------+----------------------------------------------------+
      | birth_year     | The bike rider's year of birth.                    |
      +----------------+----------------------------------------------------+
      | gender:        | The gender of the bike rider.                      |
      +----------------+----------------------------------------------------+
      |                |                                                    |
      +----------------+----------------------------------------------------+

      Each series is uniquely identified by one key:

      ======== =================================
      bike_id: A unique identifier for the bike.
      \        
      ======== =================================

      .. rubric:: Source
         :name: source

      Citi Bike NYC, https://www.citibikenyc.com/system-data

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(tsibble)
         nyc_bikes
