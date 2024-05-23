.. container::

   .. container::

      ========= ===============
      gss_wages R Documentation
      ========= ===============

      .. rubric:: The Gender Pay Gap in the General Social Survey
         :name: the-gender-pay-gap-in-the-general-social-survey

      .. rubric:: Description
         :name: description

      Wage data from the General Social Survey (1974-2018) to illustrate
      wage discrepancies by gender (while also considering respondent
      occupation, age, and education).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         gss_wages

      .. rubric:: Format
         :name: format

      A data frame with 11 variables:

      ``year``
         the survey year

      ``realrinc``
         the respondent's base income (in constant 1986 USD)

      ``age``
         the respondent's age in years

      ``occ10``
         respondent's occupation code (2010)

      ``occrecode``
         recode of the occupation code into one of 11 main categories

      ``prestg10``
         respondent's occupational prestige score (2010)

      ``childs``
         number of children (0-8)

      ``wrkstat``
         the work status of the respondent (full-time, part-time,
         temporarily not working, unemployed (laid off), retired,
         school, housekeeper, other)

      ``gender``
         respondent's gender (male or female)

      ``educcat``
         respondent's degree level (Less Than High School, High School,
         Junior College, Bachelor, or Graduate)

      ``maritalcat``
         respondent's marital status (Married, Widowed, Divorced,
         Separated, Never Married)

      .. rubric:: Details
         :name: details

      For further details, see https://gssdataexplorer.norc.org. Consult
      https://census.gov for more information about occupation codes.
