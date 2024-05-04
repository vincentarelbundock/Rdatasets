.. container::

   .. container::

      ========== ===============
      pwt_sample R Documentation
      ========== ===============

      .. rubric:: Penn World Table (10.0) Macroeconomic Data for Select
         Countries, 1950-2019
         :name: penn-world-table-10.0-macroeconomic-data-for-select-countries-1950-2019

      .. rubric:: Description
         :name: description

      These are some macroeconomic data for 21 select (rich) countries.
      I've used these data before to discuss issues of grouping and skew
      in cross-sectional data.

      .. rubric:: Usage
         :name: usage

      ::

         pwt_sample

      .. rubric:: Format
         :name: format

      A data frame with 1470 observations on the following 11 variables.

      ``country``
         the country name

      ``isocode``
         The country's ISO code

      ``year``
         a numeric vector for the year

      ``pop``
         Population in millions

      ``hc``
         Index of human capital per person, based on years of schooling
         and returns to education

      ``rgdpna``
         Real GDP at constant 2011 national prices (in million 2017 USD)

      ``rgdpo``
         Output-side real GDP at chained PPPs (in million 2017 USD)

      ``rgdpe``
         Expenditure-side real GDP at chained PPPs (in million 2017 USD)

      ``labsh``
         Share of labor compensation in GDP at current national prices

      ``avh``
         Average annual hours worked by persons engaged.

      ``emp``
         Number of persons engaged (in millions)

      ``rnna``
         Capital stock at constant 2017 national prices (in million 2017
         USD)

      .. rubric:: Source
         :name: source

      Taken from the ``pwt10`` package. See: https://www.rug.nl/ggdc/
