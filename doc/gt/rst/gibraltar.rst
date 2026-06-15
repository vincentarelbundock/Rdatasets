========= ===============
gibraltar R Documentation
========= ===============

Weather conditions in Gibraltar, May 2023
-----------------------------------------

Description
~~~~~~~~~~~

The ``gibraltar`` dataset has meteorological data for the Gibraltar
Airport Station from May 1 to May 31, 2023. Gibraltar is a British
Overseas Territory and city located at the southern end of the Iberian
Peninsula, on the Bay of Gibraltar. This weather station is located at
the airport (GIB), where it's at an elevation of 5 meters above mean sea
level (AMSL).

Usage
~~~~~

.. code:: R

   gibraltar

Format
~~~~~~

A tibble with 1,431 rows and 10 variables:

date, time
   The date and time of the observation.

temp, dew_point
   The air temperature and dew point values, both in degrees Celsius.

humidity
   The relative humidity as a value between ``0`` and ``1``

wind_dir, wind_speed, wind_gust
   Observations related to wind. The wind direction is given as the
   typical 'blowing from' value, simplified to one of 16 compass
   directions. The wind speed is provided in units of meters per second.
   If there was a measurable wind gust, the maximum gust speed is
   recorded as m/s values (otherwise the value is ``0``).

pressure
   The atmospheric pressure in hectopascals (hPa).

condition
   The weather condition.

Dataset ID and Badge
~~~~~~~~~~~~~~~~~~~~

DATA-11

.. container::

   |This image of that of a dataset badge.|

Dataset Introduced
~~~~~~~~~~~~~~~~~~

``v0.11.0`` (July 9, 2024)

See Also
~~~~~~~~

Other datasets: ``constants``, ``countrypops``, ``exibble``, ``films``,
``gtcars``, ``illness``, ``metro``, ``nuclides``, ``peeps``,
``photolysis``, ``pizzaplace``, ``reactions``, ``rx_addv``, ``rx_adsl``,
``sp500``, ``sza``, ``towny``

Examples
~~~~~~~~

.. code:: R

   dplyr::glimpse(gibraltar)

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_gibraltar.png
