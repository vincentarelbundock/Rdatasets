.. container::

   =========== ===============
   infmortrate R Documentation
   =========== ===============

   .. rubric:: Infant Mortality Rates, 2012
      :name: infant-mortality-rates-2012

   .. rubric:: Description
      :name: description

   This entry gives the number of deaths of infants under one year old
   in 2012 per 1,000 live births in the same year. This rate is often
   used as an indicator of the level of health in a country.

   .. rubric:: Usage
      :name: usage

   ::

      infmortrate

   .. rubric:: Format
      :name: format

   A data frame with 222 observations on the following 2 variables.

   country
      Name of country.

   inf_mort_rate
      Infant mortality rate per 1,000 live births.

   .. rubric:: Details
      :name: details

   The data is given in decreasing order of infant mortality rates.
   There are a few potential outliers.

   .. rubric:: Source
      :name: source

   CIA World Factbook,
   https://www.cia.gov/the-world-factbook/field/infant-mortality-rate/country-comparison.

   .. rubric:: Examples
      :name: examples

   ::


      library(ggplot2)

      ggplot(infmortrate, aes(x = inf_mort_rate)) +
        geom_histogram(binwidth = 10)

      ggplot(infmortrate, aes(x = inf_mort_rate)) +
        geom_density()

