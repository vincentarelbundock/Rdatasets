.. container::

   .. container::

      ====== ===============
      OODTPT R Documentation
      ====== ===============

      .. rubric:: Data for "Optimal Obfuscation: Democracy and Trade
         Policy Transparency"
         :name: data-for-optimal-obfuscation-democracy-and-trade-policy-transparency

      .. rubric:: Description
         :name: description

      A data set for replicating an argument about the relationship
      between democracy and tariffs/non-tariff trade barriers.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         OODTPT

      .. rubric:: Format
         :name: format

      A data frame with 75 observations on the following 16 variables.

      ``country``
         a character vector for the country

      ``isocode``
         a character vector for the three-character ISO code of the
         country

      ``tariff``
         the mean statutory most favored nation tariff rate

      ``corecov``
         the core non-tariff barrier coverage ratio

      ``qualcov``
         the quality non-tariff barrier coverate ratio

      ``polity``
         the familiar Polity measure of democracy, from -10 to 10

      ``iec``
         the index of electoral competitiveness from the World Bank

      ``lngdppc``
         real GDP per capita in 1995 dollars

      ``lngdp``
         real GDP in 1995 dollars

      ``lnexpgdp``
         export dependence (i.e. export/GDP ratio)

      ``reer``
         real effective exchange rate

      ``growth``
         GDP per capita growth rate

      ``dimpgdp``
         the change in the import/GDP ratio over the past three years

      ``lngovcons``
         the log of country's government consumption spending as a
         percentage of GDP

      ``gatt``
         a dummy variable for GATT membership

      ``avgtar``
         the country's average most favored nation tariff rate

      .. rubric:: Details
         :name: details

      Data downloaded Joshua Alley's Github repository on simple
      cross-sectional OLS models. These were originally two separate
      Stata files that I merged into one. Please read the Kono (2006)
      article for more information.

      .. rubric:: References
         :name: references

      Kono, Daniel. 2006. "Optimal Obfuscation: Democracy and Trade
      Policy Transparency" *American Political Science Review* 100(3):
      369-384.
