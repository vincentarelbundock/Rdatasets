================ ===============
greenhouse_gases R Documentation
================ ===============

Greenhouse gas concentrations over 2000 years
---------------------------------------------

Description
~~~~~~~~~~~

Concentrations of the three main greenhouse gases carbon dioxide,
methane and nitrous oxide. Measurements are from the Law Dome Ice Core
in Antarctica. Selected measurements are provided every 20 years from
1-2000 CE.

Usage
~~~~~

.. code:: R

   greenhouse_gases

Format
~~~~~~

An object of class ``"data.frame"``.

Details
~~~~~~~

- year. Year (CE).

- gas. Gas being measured: carbon dioxide ('CO2'), methane ('CH4') or
  nitrous oxide ('N2O').

- concentration. Gas concentration in ppm by volume ('CO2') or ppb by
  volume ('CH4', 'N2O').

Source
~~~~~~

MacFarling Meure et al. 2006 via
`NOAA <https://www.ncei.noaa.gov/access/paleo-search/study/9959/>`__.

Examples
~~~~~~~~

.. code:: R

   head(greenhouse_gases)
