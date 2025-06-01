.. container::

   .. container::

      ========== ===============
      vietnam_hh R Documentation
      ========== ===============

      .. rubric:: Vietnam health care use (household level)
         :name: vietnam-health-care-use-household-level

      .. rubric:: Description
         :name: description

      Data from the World Bank's Vietnam Living Standards Survey of
      1997-1998 at the household level. Sample extract by Cameron and
      Trivedi (2005).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         vietnam_hh

      .. rubric:: Format
         :name: format

      A data frame with 5999 observations and 8 variables:

      sex
         = 1 if head of household is female

      age
         age of head of household

      educ
         Highest education obtained by head of household

      farm
         = 1 for agricultural household

      hhsize
         household size

      commune
         commune code

      lnhhexp
         total household expenditure, ln

      lnexp12m
         household healthcare expenditure in the past 12 months, ln

      .. rubric:: Section in Text
         :name: section-in-text

      24.7 Clustering Example: Vietnam Health Care Use, pp 848-53

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

         summary(vietnam_hh)
