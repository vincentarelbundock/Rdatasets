.. container::

   ========== ===============
   pwt_sample R Documentation
   ========== ===============

   .. rubric:: Penn World Table (9.1) Macroeconomic Data for Select
      Countries, 1950-2017
      :name: penn-world-table-9.1-macroeconomic-data-for-select-countries-1950-2017

   .. rubric:: Description
      :name: description

   These are some macroeconomic data for 21 select (rich) countries.
   I've used these data before to discuss issues of grouping and skew in
   cross-sectional data.

   .. rubric:: Usage
      :name: usage

   ::

      pwt_sample

   .. rubric:: Format
      :name: format

   A data frame with 1428 observations on the following 7 variables.

   ``country``
      the country name

   ``isocode``
      The country's ISO code

   ``year``
      a numeric vector for the year

   ``pop``
      Population in millions

   ``hc``
      Index of human capital per person, based on years of schooling and
      returns to education

   ``rgdpna``
      Real GDP at constant 2011 national prices (in million 2011 USD)

   ``labsh``
      Share of labor compensation in GDP at current national prices

   .. rubric:: Source
      :name: source

   Taken from the ``pwt9`` package. See: http://www.ggdc.net/pwt/
