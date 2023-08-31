.. container::

   ==== ===============
   nyse R Documentation
   ==== ===============

   .. rubric:: nyse
      :name: nyse

   .. rubric:: Description
      :name: description

   Wooldridge Source: These are Wednesday closing prices of
   value-weighted NYSE average, available in many publications. I do not
   recall the particular source I used when I collected these data at
   MIT. Probably the easiest way to get similar data is to go to the
   NYSE web site, www.nyse.com. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('nyse')

   .. rubric:: Format
      :name: format

   A data.frame with 691 observations on 8 variables:

   -  **price:** NYSE stock price index

   -  **return:** 100*(p - p(-1))/p(-1))

   -  **return_1:** lagged return

   -  **t:**

   -  **price_1:**

   -  **price_2:**

   -  **cprice:** price - price_1

   -  **cprice_1:** lagged cprice

   .. rubric:: Used in Text
      :name: used-in-text

   pages 388-389, 407, 436, 438, 440-441, 442, 663-664

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(nyse)
