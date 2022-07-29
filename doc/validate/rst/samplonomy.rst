.. container::

   ========== ===============
   samplonomy R Documentation
   ========== ===============

   .. rubric:: Economic data on Samplonia
      :name: economic-data-on-samplonia

   .. rubric:: Description
      :name: description

   Simulated economic time series representing GDP, Import, Export and
   Balance of Trade (BOT) of Samplonia. Samplonia is a fictional Island
   invented by Jelke Bethelehem (2009). The country has 10 000
   inhabitants. It consists of two provinces: Agria and Induston. Agria
   is a rural province consisting of the mostly fruit and vegetable
   producing district of Wheaton and the mostly cattle producing
   Greenham. Induston has four districts. Two districts with heavy
   industry named Smokeley and Mudwater. Newbay is a young, developing
   district while Crowdon is where the rich Samplonians retire. The
   current data set contains several time series from Samplonia's
   national accounts system in long format.

   There are annual and quarterly time series on GDP, Import, Export and
   Balance of Trade, for Samplonia as a whole, for each province and
   each district. BOT is defined as Export-Import for each region and
   period; quarterly figures are expected to add up to annual figures
   for each region and measure, and subregions are expected to add up to
   their super-regions.

   -  region: Region (Samplonia, one if its 2 provinces, or one of its 6
      districts)

   -  freq: Frequency of the time series

   -  period: Period (year or quarter)

   -  measure: The economic variable (gdp, import, export, balance)

   -  value: The value

   The data set has been endowed with the following errors.

   -  For Agria, the 2015 GDP record is not present.

   -  For Induston, the 2018Q3 export value is missing (``NA``)

   -  For Induston, there are two different values for the 2018Q2 Export

   -  For Crowdon, the 2015Q1 balance value is missing (``NA``).

   -  For Wheaton, the 2019Q2 import is missing (``NA``).

   .. rubric:: Format
      :name: format

   An RData file.

   .. rubric:: References
      :name: references

   J. Bethlehem (2009), Applied Survey Methods: A Statistical
   Perspective. John Wiley & Sons, Hoboken, NJ.

   .. rubric:: See Also
      :name: see-also

   Other datasets: ``nace_rev2``, ``retailers``
