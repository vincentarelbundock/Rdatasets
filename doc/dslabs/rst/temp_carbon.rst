.. container::

   .. container::

      =========== ===============
      temp_carbon R Documentation
      =========== ===============

      .. rubric:: Global temperature anomaly and carbon emissions,
         1751-2018
         :name: global-temperature-anomaly-and-carbon-emissions-1751-2018

      .. rubric:: Description
         :name: description

      Annual mean global temperature anomaly on land, sea and combined,
      1880-2018. Annual global carbon emissions, 1751-2014.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         temp_carbon

      .. rubric:: Format
         :name: format

      An object of class ``"data.frame"``.

      .. rubric:: Details
         :name: details

      -  year. Year (CE).

      -  temp_anomaly. Global annual mean temperature anomaly in degrees
         Celsius relative to the 20th century mean temperature.
         1880-2018.

      -  land_anomaly. Annual mean temperature anomaly on land in
         degrees Celsius relative to the 20th century mean temperature.
         1880-2018.

      -  ocean_anomaly. Annual mean temperature anomaly over ocean in
         degrees Celsius relative to the 20th century mean temperature.
         1880-2018.

      -  carbon_emissions. Annual carbon emissions in millions of metric
         tons of carbon. 1751-2014.

      .. rubric:: Source
         :name: source

      NOAA and Boden, T.A., G. Marland, and R.J. Andres (2017) via CDIAC

      .. rubric:: Examples
         :name: examples

      .. code:: R

         head(temp_carbon)
