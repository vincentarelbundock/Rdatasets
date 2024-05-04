.. container::

   .. container::

      ============ ===============
      historic_co2 R Documentation
      ============ ===============

      .. rubric:: Atmospheric carbon dioxide concentration over 800,000
         years
         :name: atmospheric-carbon-dioxide-concentration-over-800000-years

      .. rubric:: Description
         :name: description

      Concentration of carbon dioxide in ppm by volume from direct
      measurements at Mauna Loa (1959-2018 CE) and indirect measurements
      from a series of Antarctic ice cores (approx. -800,000-2001 CE).

      .. rubric:: Usage
         :name: usage

      ::

         historic_co2

      .. rubric:: Format
         :name: format

      An object of class ``"data.frame"``.

      .. rubric:: Details
         :name: details

      -  year. Year (CE).

      -  co2. Carbon dioxide concentration in ppm by volume.

      -  source. Source of carbon dioxide measurement: direct CO2 annual
         mean concentrations from Mauna Loa ('Mauna Loa') or indirect
         CO2 concentrations from air trapped in ice cores ('Ice Cores').

      .. rubric:: Source
         :name: source

      Mauna Loa data from
      `NOAA <https://gml.noaa.gov/ccgg/trends/data.html>`__. Ice core
      data from Bereiter et al. 2015 via
      `NOAA <https://gml.noaa.gov/ccgg/trends/data.html>`__.

      .. rubric:: Examples
         :name: examples

      ::

         head(historic_co2)
