============ ===============
historic_co2 R Documentation
============ ===============

Atmospheric carbon dioxide concentration over 800,000 years
-----------------------------------------------------------

Description
~~~~~~~~~~~

Concentration of carbon dioxide in ppm by volume from direct
measurements at Mauna Loa (1959-2018 CE) and indirect measurements from
a series of Antarctic ice cores (approx. -800,000-2001 CE).

Usage
~~~~~

.. code:: R

   historic_co2

Format
~~~~~~

An object of class ``"data.frame"``.

Details
~~~~~~~

- year. Year (CE).

- co2. Carbon dioxide concentration in ppm by volume.

- source. Source of carbon dioxide measurement: direct CO2 annual mean
  concentrations from Mauna Loa ('Mauna Loa') or indirect CO2
  concentrations from air trapped in ice cores ('Ice Cores').

Source
~~~~~~

Mauna Loa data from
`NOAA <https://gml.noaa.gov/ccgg/trends/data.html>`__. Ice core data
from Bereiter et al. 2015 via
`NOAA <https://gml.noaa.gov/ccgg/trends/data.html>`__.

Examples
~~~~~~~~

.. code:: R

   head(historic_co2)
