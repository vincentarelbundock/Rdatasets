========== ===============
fossilfuel R Documentation
========== ===============

Fossil Fuel Data
----------------

Description
~~~~~~~~~~~

Estimates of total worldwide carbon emissions from fossil fuel use.

Usage
~~~~~

.. code:: R

   fossilfuel

Format
~~~~~~

This data frame contains the following columns:

year
   a numeric vector giving the year the measurement was taken.

carbon
   a numeric vector giving the total worldwide carbon emissions from
   fossil fuel use, in millions of tonnes.

Details
~~~~~~~

Data for the years 1751 through to 2014 is available from Data for the
years 2014 https://data.ess-dive.lbl.gov/portals/CDIAC

Source
~~~~~~

Boden T A; Marland G; Andres R J (1999): Global, Regional, and National
Fossil-Fuel CO2 Emissions (1751 - 2014) (V. 2017). Carbon Dioxide
Information Analysis Center (CDIAC), Oak Ridge National Laboratory
(ORNL), Oak Ridge, TN (United States), ESS-DIVE repository. Dataset.
doi:10.3334/CDIAC/00001_V2017

Examples
~~~~~~~~

.. code:: R

   plot(fossilfuel)
