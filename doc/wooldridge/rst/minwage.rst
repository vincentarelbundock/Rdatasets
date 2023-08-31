.. container::

   ======= ===============
   minwage R Documentation
   ======= ===============

   .. rubric:: minwage
      :name: minwage

   .. rubric:: Description
      :name: description

   Wooldridge Source: P. Wolfson and D. Belman (2004), “The Minimum
   Wage: Consequences for Prices and Quantities in Low-Wage Labor
   Markets,” Journal of Business & Economic Statistics 22, 296-311.
   Professor Belman kindly provided the data. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('minwage')

   .. rubric:: Format
      :name: format

   A data.frame with 612 observations on 58 variables:

   -  **emp232:** employment, sector 232, 1000s

   -  **wage232:** hourly wage, sector 232, $

   -  **emp236:**

   -  **wage236:**

   -  **emp234:**

   -  **wage234:**

   -  **emp314:**

   -  **wage314:**

   -  **emp228:**

   -  **wage228:**

   -  **emp233:**

   -  **wage233:**

   -  **emp394:**

   -  **wage394:**

   -  **emp231:**

   -  **wage231:**

   -  **emp226:**

   -  **wage226:**

   -  **emp387:**

   -  **wage387:**

   -  **emp056:**

   -  **wage056:**

   -  **unem:** civilian unemployment rate, percent

   -  **cpi:** Consumer Price Index (urban), 1982-1984 = 100

   -  **minwage:** Federal minimum wage, $/hour

   -  **lemp232:** log(emp232)

   -  **lwage232:** log(wage232)

   -  **gemp232:** lemp232 - lemp232[\_n-1]

   -  **gwage232:** lwage232 - lwage232[\_n-1]

   -  **lminwage:** log(minwage)

   -  **gmwage:** lminwage - lminwage[\_n-1]

   -  **gmwage_1:** gmwage[\_n-1]

   -  **gmwage_2:**

   -  **gmwage_3:**

   -  **gmwage_4:**

   -  **gmwage_5:**

   -  **gmwage_6:**

   -  **gmwage_7:**

   -  **gmwage_8:**

   -  **gmwage_9:**

   -  **gmwage_10:**

   -  **gmwage_11:**

   -  **gmwage_12:**

   -  **lemp236:**

   -  **gcpi:** lcpi - lcpi[\_n-1]

   -  **lcpi:** log(cpi)

   -  **lwage236:**

   -  **gemp236:**

   -  **gwage236:**

   -  **lemp234:**

   -  **lwage234:**

   -  **gemp234:**

   -  **gwage234:**

   -  **lemp314:**

   -  **lwage314:**

   -  **gemp314:**

   -  **gwage314:**

   -  **t:** linear time trend, 1 to 612

   .. rubric:: Notes
      :name: notes

   The sectors corresponding to the different numbers in the data file
   are provided in the Wolfson and Bellman and article.

   Used in Text: pages 379, 410, 444-445, 674-675

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(minwage)
