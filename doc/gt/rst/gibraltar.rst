.. container::

   .. container::

      ========= ===============
      gibraltar R Documentation
      ========= ===============

      .. rubric:: Weather conditions in Gibraltar, May 2023
         :name: weather-conditions-in-gibraltar-may-2023

      .. rubric:: Description
         :name: description

      The ``gibraltar`` dataset has meteorological data for the
      Gibraltar Airport Station from May 1 to May 31, 2023. Gibraltar is
      a British Overseas Territory and city located at the southern end
      of the Iberian Peninsula, on the Bay of Gibraltar. This weather
      station is located at the airport (GIB), where it's at an
      elevation of 5 meters above mean sea level (AMSL).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         gibraltar

      .. rubric:: Format
         :name: format

      A tibble with 1,431 rows and 10 variables:

      date, time
         The date and time of the observation.

      temp, dew_point
         The air temperature and dew point values, both in degrees
         Celsius.

      humidity
         The relative humidity as a value between ``0`` and ``1``

      wind_dir, wind_speed, wind_gust
         Observations related to wind. The wind direction is given as
         the typical 'blowing from' value, simplified to one of 16
         compass directions. The wind speed is provided in units of
         meters per second. If there was a measurable wind gust, the
         maximum gust speed is recorded as m/s values (otherwise the
         value is ``0``).

      pressure
         The atmospheric pressure in hectopascals (hPa).

      condition
         The weather condition.

      .. rubric:: Dataset ID and Badge
         :name: dataset-id-and-badge

      DATA-11

      .. container::

         |This image of that of a dataset badge.|

      .. rubric:: Dataset Introduced
         :name: dataset-introduced

      ``v0.11.0`` (July 9, 2024)

      .. rubric:: See Also
         :name: see-also

      Other datasets: ``constants``, ``countrypops``, ``exibble``,
      ``films``, ``gtcars``, ``illness``, ``metro``, ``nuclides``,
      ``peeps``, ``photolysis``, ``pizzaplace``, ``reactions``,
      ``rx_addv``, ``rx_adsl``, ``sp500``, ``sza``, ``towny``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         dplyr::glimpse(gibraltar)

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_gibraltar.png
