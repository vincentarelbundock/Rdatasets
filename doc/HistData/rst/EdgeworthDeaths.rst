.. container::

   =============== ===============
   EdgeworthDeaths R Documentation
   =============== ===============

   .. rubric:: Edgeworth's Data on Death Rates in British Counties
      :name: EdgeworthDeaths

   .. rubric:: Description
      :name: description

   In 1885, Francis Edgeworth published a paper, *On methods of
   ascertaining variations in the rate of births, deaths and marriages*.
   It contained among the first examples of two-way tables, analyzed to
   show variation among row and column factors, in a way that Fisher
   would later formulate as the Analysis of Variance.

   Although the data are rates per 1000, they provide a good example of
   a two-way ANOVA with n=1 per cell, where an additive model fits
   reasonably well.

   Treated as frequencies, the data is also a good example of a case
   where the independence model fits reasonably well.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("EdgeworthDeaths")

   .. rubric:: Format
      :name: format

   A data frame with 42 observations on the following 3 variables.

   ``County``
      a factor with levels ``Berks`` ``Herts`` ``Bucks`` ``Oxford``
      ``Bedford`` ``Cambridge``

   ``year``
      an ordered factor with levels ``1876`` < ``1877`` < ``1878`` <
      ``1879`` < ``1880`` < ``1881`` < ``1882``

   ``Freq``
      a numeric vector, death rate per 1000 population

   .. rubric:: Details
      :name: details

   Edgeworth's data came from the Registrar General's report for the
   final year, 1883. The ``Freq`` variable represents death rates per
   1000 population in the six counties listed.

   .. rubric:: Source
      :name: source

   The data were scanned from Table 5.2 in Stigler, S. M. (1999)
   *Statistics on the Table: The History of Statistical Concepts and
   Methods*, Harvard University Press.

   .. rubric:: References
      :name: references

   Edgeworth, F. Y. (1885). On Methods of Ascertaining Variations in the
   Rate of Births, Deaths, and Marriages. *Journal of the Statistical
   Society of London*, 48(4), 628-649. doi:10.2307/2979201

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(EdgeworthDeaths)

      # fit the additive ANOVA model
      library(car)  # for Anova()
      EDmod <- lm(Freq ~ County + year, data=EdgeworthDeaths)
      Anova(EDmod)

      # now, consider as a two-way table of frequencies

      library(vcd)
      library(MASS)
      structable( ~ County + year, data=EdgeworthDeaths)
      loglm( Freq ~ County + year, data=EdgeworthDeaths)

      mosaic( ~ County + year, data=EdgeworthDeaths, 
          shade=TRUE, legend=FALSE, labeling=labeling_values, 
          gp=shading_Friendly)
