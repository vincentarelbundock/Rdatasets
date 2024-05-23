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
      the years 2014
      https://cdiac.ess-dive.lbl.gov/ftp/ndp030/global.1751_2014.ems

      .. rubric:: Source
         :name: source

      Boden TA, Marland G, Andres RJ (2017). “Global, Regional, and
      National Fossil-Fuel CO2 Emissions.”
      https://cdiac.ess-dive.lbl.gov/trends/emis/meth_reg.html.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         plot(fossilfuel)
