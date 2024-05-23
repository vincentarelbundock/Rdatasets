.. container::

   .. container::

      ====== ===============
      intdef R Documentation
      ====== ===============

      .. rubric:: intdef
         :name: intdef

      .. rubric:: Description
         :name: description

      Wooldridge Source: Economic Report of the President, 2004, Tables
      B-64, B-73, and B-79. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('intdef')

      .. rubric:: Format
         :name: format

      A data.frame with 56 observations on 13 variables:

      -  **year:** 1948 to 2003

      -  **i3:** 3 month T-bill rate

      -  **inf:** CPI inflation rate

      -  **rec:** federal receipts, percent GDP

      -  **out:** federal outlays, percent GDP

      -  **def:** out - rec

      -  **i3_1:** i3[\_n-1]

      -  **inf_1:** inf[\_n-1]

      -  **def_1:** def[\_n-1]

      -  **ci3:** i3 - i3_1

      -  **cinf:** inf - inf_1

      -  **cdef:** def - def_1

      -  **y77:** =1 if year >= 1977; change in FY

      .. rubric:: Used in Text
         :name: used-in-text

      pages 356, 377, 430, 547-548

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(intdef)
