.. container::

   ======= ===============
   wageprc R Documentation
   ======= ===============

   .. rubric:: wageprc
      :name: wageprc

   .. rubric:: Description
      :name: description

   Wooldridge Source: Economic Report of the President, various years.
   Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('wageprc')

   .. rubric:: Format
      :name: format

   A data.frame with 286 observations on 20 variables:

   -  **price:** consumer price index

   -  **wage:** nominal hourly wage

   -  **t:** time trend = 1, 2 , 3, ...

   -  **lprice:** log(price)

   -  **lwage:** log(wage)

   -  **gprice:** lprice - lprice[\_n-1]

   -  **gwage:** lwage - lwage[\_n-1]

   -  **gwage_1:** gwage[\_n-1]

   -  **gwage_2:** gwage[\_n-2]

   -  **gwage_3:**

   -  **gwage_4:**

   -  **gwage_5:**

   -  **gwage_6:**

   -  **gwage_7:**

   -  **gwage_8:**

   -  **gwage_9:**

   -  **gwage_10:**

   -  **gwage_11:**

   -  **gwage_12:**

   -  **gprice_1:** gprice[\_n-1]

   .. rubric:: Notes
      :name: notes

   These monthly data run from January 1964 through October 1987. The
   consumer price index averages to 100 in 1967.

   Used in Text: pages 405, 444-445, 671.

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(wageprc)
