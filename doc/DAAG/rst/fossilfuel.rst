.. container::

   .. container::

      ========== ===============
      fossilfuel R Documentation
      ========== ===============

      .. rubric:: Fossil Fuel Data
         :name: fossil-fuel-data

      .. rubric:: Description
         :name: description

      Estimates of total worldwide carbon emissions from fossil fuel
      use.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         fossilfuel

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      year
         a numeric vector giving the year the measurement was taken.

      carbon
         a numeric vector giving the total worldwide carbon emissions
         from fossil fuel use, in millions of tonnes.

      .. rubric:: Details
         :name: details

      Data for the years 1751 through to 2014 is available from Data for
      the years 2014 https://data.ess-dive.lbl.gov/portals/CDIAC

      .. rubric:: Source
         :name: source

      Boden T A; Marland G; Andres R J (1999): Global, Regional, and
      National Fossil-Fuel CO2 Emissions (1751 - 2014) (V. 2017). Carbon
      Dioxide Information Analysis Center (CDIAC), Oak Ridge National
      Laboratory (ORNL), Oak Ridge, TN (United States), ESS-DIVE
      repository. Dataset. doi:10.3334/CDIAC/00001_V2017

      .. rubric:: Examples
         :name: examples

      .. code:: R

         plot(fossilfuel)
