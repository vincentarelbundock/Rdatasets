.. container::

   .. container::

      =========== ===============
      vietnam_ind R Documentation
      =========== ===============

      .. rubric:: Vietnam health care use (individual level)
         :name: vietnam-health-care-use-individual-level

      .. rubric:: Description
         :name: description

      Data from the World Bank's Vietnam Living Standards Survey of
      1997-1998 at the individual level. Sample extract by Cameron and
      Trivedi (2005).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         vietnam_ind

      .. rubric:: Format
         :name: format

      A data frame with 27766 observations and 12 variables:

      educ
         Completed diploma level

      sex
         = 1 if respondent is male

      age
         age in years

      married
         = 1 for married person

      illness
         number of illnesses experienced in past 12 months

      injury
         = 1 if injured during survey period

      illdays
         number of illness days

      actdays
         number od days of limited activity

      pharvis
         number of direct pharmacy visits

      insurance
         = 1 if respondent has health insurance coverage

      lnhhexp
         total household expenditure, ln

      commune
         commune code

      .. rubric:: Section in Text
         :name: section-in-text

      Section

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

         summary(vietnam_ind)
