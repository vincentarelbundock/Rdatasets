.. container::

   =========== ===============
   sa_gdp_elec R Documentation
   =========== ===============

   .. rubric:: Sustainability and Economic Indicators for South Africa.
      :name: sa_gdp_elec

   .. rubric:: Description
      :name: description

   Includes yearly data on gdp, gni, co2 emissions, start up costs.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      sa_gdp_elec

   .. rubric:: Format
      :name: format

   A data frame with 16 rows and 7 variables.

   year
      Year data collected.

   access_elec
      Access to electricity as a percentage of the population.

   startup
      cost of business startup procedures as a percent of GNI.

   co2
      CO2 emission in kt (kiloton).

   gdp
      GDP per capita, PPP in constant 2017 international dollars.

   gni
      GNI per capita, PPP in constant 2017 international dollars.

   co2_kg_ppp
      kg per 2017 PPP dollars of GDP.

   .. rubric:: Source
      :name: source

   -  `World Bank
      I <https://databank.worldbank.org/source/world-development-indicators>`__

   -  `World Bank
      II <https://www.worldbank.org/en/programs/business-enabling-environment>`__

   -  `Carbon Dioxide Information Analysis Center, Environmental
      Sciences Division, Oak Ridge National
      Laboratory <https://www.climatewatchdata.org>`__

   .. rubric:: Examples
      :name: examples

   .. code:: R

      library(ggplot2)

      ggplot(sa_gdp_elec, aes(year, access_elec))+
       geom_point(alpha = 0.3) +
       labs( x= "Year",
             y = "Percent of Population",
             title = "Access to Electricity in South Africa 2003 - 2018")
