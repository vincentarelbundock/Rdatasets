.. container::

   ======= ===============
   admnrev R Documentation
   ======= ===============

   .. rubric:: admnrev
      :name: admnrev

   .. rubric:: Description
      :name: description

   Wooldridge Source: Data from the National Highway Traffic Safety
   Administration: “A Digest of State Alcohol-Highway Safety Related
   Legislation,” U.S. Department of Transportation, NHTSA. I used the
   third (1985), eighth (1990), and 13th (1995) editions. Data loads
   lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('admnrev')

   .. rubric:: Format
      :name: format

   A data.frame with 153 observations on 5 variables:

   -  **state:** state postal code

   -  **year:** 85, 90, or 95

   -  **admnrev:** =1 if admin. revoc. law

   -  **daysfrst:** days suspended, first offense

   -  **daysscnd:** days suspended, second offense

   .. rubric:: Notes
      :name: notes

   This is not so much a data set as a summary of so-called
   “administrative per se” laws atthe state level, for three different
   years. It could be supplemented with drunk-driving fatalities for a
   nice econometric analysis. In addition, the data for 2000 or later
   years can be added, forming the basis for a term project. Many other
   explanatory variables could be included. Unemployment rates,
   state-level tax rates on alcohol, and membership in MADD are just a
   few possibilities.

   Used in Text: not used

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(admnrev)
