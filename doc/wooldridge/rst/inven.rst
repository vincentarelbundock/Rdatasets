.. container::

   ===== ===============
   inven R Documentation
   ===== ===============

   .. rubric:: inven
      :name: inven

   .. rubric:: Description
      :name: description

   Wooldridge Source: Economic Report of the President, 1997, Tables
   B-4, B-20, B-61, and B-71. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('inven')

   .. rubric:: Format
      :name: format

   A data.frame with 37 observations on 13 variables:

   -  **year:** 1959-1995

   -  **i3:** 3 mo. T-bill rate

   -  **inf:** CPI inflation rate

   -  **inven:** inventories, billions '92 $

   -  **gdp:** GDP, billions '92 $

   -  **r3:** real interest: i3 - inf

   -  **cinven:** inven - inven[\_n-1]

   -  **cgdp:** gdp - gdp[\_n-1]

   -  **cr3:** r3 - r3[\_n-1]

   -  **ci3:** i3 - i3[\_n-1]

   -  **cinf:** inf - inf[\_n-1]

   -  **ginven:** log(inven) - log(inven[\_n-1])

   -  **ggdp:** log(gdp) - log(gdp[\_n-1])

   .. rubric:: Used in Text
      :name: used-in-text

   pages 408, 444, 643, 830

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(inven)
