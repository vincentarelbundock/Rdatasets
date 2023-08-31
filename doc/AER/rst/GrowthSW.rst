.. container::

   ======== ===============
   GrowthSW R Documentation
   ======== ===============

   .. rubric:: Determinants of Economic Growth
      :name: GrowthSW

   .. rubric:: Description
      :name: description

   Data on average growth rates over 1960–1995 for 65 countries, along
   with variables that are potentially related to growth.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("GrowthSW")

   .. rubric:: Format
      :name: format

   A data frame containing 65 observations on 6 variables.

   growth
      average annual percentage growth of real GDP from 1960 to 1995.

   rgdp60
      value of GDP per capita in 1960, converted to 1960 US dollars.

   tradeshare
      average share of trade in the economy from 1960 to 1995, measured
      as the sum of exports (X) plus imports (M), divided by GDP; that
      is, the average value of (X + M)/GDP from 1960 to 1995.

   education
      average number of years of schooling of adult residents in that
      country in 1960.

   revolutions
      average annual number of revolutions, insurrections (successful or
      not) and coup d'etats in that country from 1960 to 1995.

   assassinations
      average annual number of political assassinations in that country
      from 1960 to 1995 (in per million population).

   .. rubric:: Source
      :name: source

   Online complements to Stock and Watson (2007).

   .. rubric:: References
      :name: references

   Beck, T., Levine, R., and Loayza, N. (2000). Finance and the Sources
   of Growth. *Journal of Financial Economics*, **58**, 261–300.

   Stock, J. H. and Watson, M. W. (2007). *Introduction to
   Econometrics*, 2nd ed. Boston: Addison Wesley.

   .. rubric:: See Also
      :name: see-also

   ``StockWatson2007``, ``GrowthDJ``, ``OECDGrowth``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("GrowthSW")
      summary(GrowthSW)
