.. container::

   ======= ===============
   Alcohol R Documentation
   ======= ===============

   .. rubric:: Alcohol Consumption per Capita
      :name: Alcohol

   .. rubric:: Description
      :name: description

   These data provide per capita alcohol consumption values for many
   countries in 2005 and 2008. There are also a few countries for which
   there are data in other years.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(Alcohol)

   .. rubric:: Format
      :name: format

   A data frame with 411 observations on the following variables.

   -  ``country`` country name

   -  ``year`` year

   -  ``alcohol`` estimated per capita alcohol consumption for adults
      (15+) in litres pure alcohol

   .. rubric:: Source
      :name: source

   Gapminder (https://www.gapminder.org/data/)

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(Alcohol)
      # There are only a few observations in years other than 2005 and 2008
      subset(Alcohol, ! year %in% c(2005,2008))
