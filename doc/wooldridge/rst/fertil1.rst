.. container::

   ======= ===============
   fertil1 R Documentation
   ======= ===============

   .. rubric:: fertil1
      :name: fertil1

   .. rubric:: Description
      :name: description

   Wooldridge Source: W. Sander, “The Effect of Women’s Schooling on
   Fertility,” Economics Letters 40, 229-233.Professor Sander kindly
   provided the data, which are a subset of what he used in his article.
   He compiled the data from various years of the National Opinion
   Resource Center’s General Social Survey. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('fertil1')

   .. rubric:: Format
      :name: format

   A data.frame with 1129 observations on 27 variables:

   -  **year:** 72 to 84, even

   -  **educ:** years of schooling

   -  **meduc:** mother's education

   -  **feduc:** father's education

   -  **age:** in years

   -  **kids:** # children ever born

   -  **black:** = 1 if black

   -  **east:** = 1 if lived in east at 16

   -  **northcen:** = 1 if lived in nc at 16

   -  **west:** = 1 if lived in west at 16

   -  **farm:** = 1 if on farm at 16

   -  **othrural:** = 1 if other rural at 16

   -  **town:** = 1 if lived in town at 16

   -  **smcity:** = 1 if in small city at 16

   -  **y74:** = 1 if year = 74

   -  **y76:**

   -  **y78:**

   -  **y80:**

   -  **y82:**

   -  **y84:**

   -  **agesq:** age^2

   -  **y74educ:**

   -  **y76educ:**

   -  **y78educ:**

   -  **y80educ:**

   -  **y82educ:**

   -  **y84educ:**

   .. rubric:: Notes
      :name: notes

   (1) Much more recent data can be obtained from the National Opinion
   Research Center website, http://www.norc.org/GSS+Website/Download/.
   Very rich pooled cross sections can be constructed to study a variety
   of issues – not just changes in fertility over time. It would be
   interesting to analyze a similar data set for a developing country,
   especially where efforts have been made to emphasize birth control.
   Some measure of access to birth control could be useful if it varied
   by region. Sometimes, one can find policy changes in the
   advertisement or availability of contraceptives.

   Used in Text: pages 449-450, 476, 541, 625, 681

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(fertil1)
