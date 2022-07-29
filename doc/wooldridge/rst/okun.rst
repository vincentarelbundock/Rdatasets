.. container::

   ==== ===============
   okun R Documentation
   ==== ===============

   .. rubric:: okun
      :name: okun

   .. rubric:: Description
      :name: description

   Wooldridge Source: Economic Report of the President, 2007, Tables B-4
   and B-42. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('okun')

   .. rubric:: Format
      :name: format

   A data.frame with 47 observations on 4 variables:

   -  **year:** 1959 through 2005

   -  **pcrgdp:** percentage change in real GDP

   -  **unem:** civilian unemployment rate

   -  **cunem:** unem - unem[_n-1]

   .. rubric:: Used in Text
      :name: used-in-text

   410, 444

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(okun)
