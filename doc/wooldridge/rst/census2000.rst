========== ===============
census2000 R Documentation
========== ===============

census2000
----------

Description
~~~~~~~~~~~

Wooldridge Source: Obtained from the United States Census Bureau by
Professor Alberto Abadie of the Harvard Kennedy School of Government.
Professor Abadie kindly provided the data. Data loads lazily.

Usage
~~~~~

.. code:: R

   data('census2000')

Format
~~~~~~

A data.frame with 29501 observations on 6 variables:

- **state:** State (ICPSR code)

- **puma:** Public Use Microdata Area

- **educ:** educational attainment

- **lweekinc:** log(weekly income)

- **exper:** years workforce experience

- **expersq:** exper^2

Used in Text
~~~~~~~~~~~~

pages 452-453

Source
~~~~~~

http://www.cengage.com/c/introductory-econometrics-a-modern-approach-6e-wooldridge

Examples
~~~~~~~~

.. code:: R

    str(census2000)
