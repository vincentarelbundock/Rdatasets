.. container::

   ======== ===============
   phillips R Documentation
   ======== ===============

   .. rubric:: phillips
      :name: phillips

   .. rubric:: Description
      :name: description

   Wooldridge Source: Economic Report of the President, 2004, Tables
   B-42 and B-64. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('phillips')

   .. rubric:: Format
      :name: format

   A data.frame with 56 observations on 7 variables:

   -  **year:** 1948 through 2003

   -  **unem:** civilian unemployment rate, percent

   -  **inf:** percentage change in CPI

   -  **inf_1:** inf[_n-1]

   -  **unem_1:** unem[_n-1]

   -  **cinf:** inf - inf_1

   -  **cunem:** unem - unem_1

   .. rubric:: Used in Text
      :name: used-in-text

   pages 355-356, 379, 390-391, 408, 409, 409, 418, 428, 443, 548-549,
   642, 656, 659, 662, 672, 817.

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(phillips)
