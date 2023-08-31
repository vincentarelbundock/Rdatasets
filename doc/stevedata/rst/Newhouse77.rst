.. container::

   ========== ===============
   Newhouse77 R Documentation
   ========== ===============

   .. rubric:: Medical-Care Expenditure: A Cross-National Survey
      (Newhouse, 1977)
      :name: Newhouse77

   .. rubric:: Description
      :name: description

   These are the data in Newhouse's (1977) simple OLS model from 1977.
   In his case, he's trying to explain medical care expenditures as a
   function of GDP per capita for these countries. It's probably the
   easiest OLS model I can find in print because Newhouse helpfully
   provides all the data in one simple table.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      Newhouse77

   .. rubric:: Format
      :name: format

   A data frame with 13 observations on the following 5 variables.

   ``country``
      a character vector for the country

   ``year``
      a numeric vector for the year

   ``gdppc``
      a numeric vector for the per capita GDP in USD

   ``medsharegdp``
      a numeric vector for the medical care share as percentage of GDP

   ``medexppc``
      a numeric vector for per capita medical care expenditure (in USD)

   .. rubric:: Details
      :name: details

   Table 1 in Newhouse (1977) is well-annotated with background
   information.

   .. rubric:: References
      :name: references

   Newhouse, Joseph P. 1977. "Medical-Care Expenditure: A Cross-National
   Survey." *Journal of Human Resources* 12(1): 115-125.
