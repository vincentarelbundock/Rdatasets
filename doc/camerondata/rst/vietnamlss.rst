.. container::

   .. container::

      ========== ===============
      vietnamlss R Documentation
      ========== ===============

      .. rubric:: Household medical expenditure
         :name: household-medical-expenditure

      .. rubric:: Description
         :name: description

      Data from the World Bank's 1997 Vietnam Living Standards Survey
      1997-98 at the household level. Cameron and Trivedi (2005)

      .. rubric:: Usage
         :name: usage

      .. code:: R

         vietnamlss

      .. rubric:: Format
         :name: format

      A data frame with 5999 observations and 9 variables:

      sex
         gender of household head, 1 = male; 2 = female

      age
         age of household head

      educyr98
         schooling year of household head

      farm
         type of household, = 1 if farm

      urban98
         = 1 if urban area, = 0 if rural area

      hhsize
         household size

      lhhexp1
         household total expenditure, ln

      lhhex12m
         household medical expenditure, ln

      lnrlfood
         household food expenditure, ln

      .. rubric:: Section in Text
         :name: section-in-text

      4.6.4 Quantile Regression Example, pp. 88-90

      .. rubric:: Source
         :name: source

      http://cameron.econ.ucdavis.edu/mmabook/mmadata.html

      .. rubric:: References
         :name: references

      Cameron, A. and Trivedi, P. (2005), "Microeconometrics: Methods
      and Applications," Cambridge University Press, New York.

      World Bank Living Standards Survey 1997-1998 Vietnam.
      https://microdata.worldbank.org/index.php/catalog/2694

      .. rubric:: Examples
         :name: examples

      .. code:: R

         summary(vietnamlss)
