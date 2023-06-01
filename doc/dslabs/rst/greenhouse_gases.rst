.. container::

   ================ ===============
   greenhouse_gases R Documentation
   ================ ===============

   .. rubric:: Greenhouse gas concentrations over 2000 years
      :name: greenhouse_gases

   .. rubric:: Description
      :name: description

   Concentrations of the three main greenhouse gases carbon dioxide,
   methane and nitrous oxide. Measurements are from the Law Dome Ice
   Core in Antarctica. Selected measurements are provided every 20 years
   from 1-2000 CE.

   .. rubric:: Usage
      :name: usage

   ::

      greenhouse_gases

   .. rubric:: Format
      :name: format

   An object of class ``"data.frame"``.

   .. rubric:: Details
      :name: details

   -  year. Year (CE).

   -  gas. Gas being measured: carbon dioxide ('CO2'), methane ('CH4')
      or nitrous oxide ('N2O').

   -  concentration. Gas concentration in ppm by volume ('CO2') or ppb
      by volume ('CH4', 'N2O').

   .. rubric:: Source
      :name: source

   MacFarling Meure et al. 2006 via
   `NOAA <https://www.ncei.noaa.gov/access/paleo-search/study/9959/>`__.

   .. rubric:: Examples
      :name: examples

   ::

      head(greenhouse_gases)
