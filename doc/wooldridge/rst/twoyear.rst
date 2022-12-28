.. container::

   ======= ===============
   twoyear R Documentation
   ======= ===============

   .. rubric:: twoyear
      :name: twoyear

   .. rubric:: Description
      :name: description

   Wooldridge Source: T.J. Kane and C.E. Rouse (1995), Labor-Market
   Returns to Two- and Four-Year Colleges, American Economic Review 85,
   600-614. With Professor Rouse’s kind assistance, I obtained the data
   from her web site at Princeton University. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('twoyear')

   .. rubric:: Format
      :name: format

   A data.frame with 6763 observations on 23 variables:

   -  **female:** =1 if female

   -  **phsrank:** percent high school rank; 100 = best

   -  **BA:** =1 if Bachelor's degree

   -  **AA:** =1 if Associate's degree

   -  **black:** =1 if African-American

   -  **hispanic:** =1 if Hispanic

   -  **id:** ID Number

   -  **exper:** total (actual) work experience

   -  **jc:** total 2-year credits

   -  **univ:** total 4-year credits

   -  **lwage:** log hourly wage

   -  **stotal:** total standardized test score

   -  **smcity:** =1 if small city, 1972

   -  **medcity:** =1 if med. city, 1972

   -  **submed:** =1 if suburb med. city, 1972

   -  **lgcity:** =1 if large city, 1972

   -  **sublg:** =1 if suburb large city, 1972

   -  **vlgcity:** =1 if very large city, 1972

   -  **subvlg:** =1 if sub. very lge. city, 1972

   -  **ne:** =1 if northeast

   -  **nc:** =1 if north central

   -  **south:** =1 if south

   -  **totcoll:** jc + univ

   .. rubric:: Notes
      :name: notes

   As possible extensions, students can explore whether the returns to
   two-year or four-year colleges depend on race or gender. This is
   partly done in Problem 7.9 but where college is aggregated into one
   number. Also, should experience appear as a quadratic in the wage
   specification?

   Used in Text: pages 140-143, 165, 261, 340

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(twoyear)
