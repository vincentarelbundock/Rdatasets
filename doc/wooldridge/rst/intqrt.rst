.. container::

   ====== ===============
   intqrt R Documentation
   ====== ===============

   .. rubric:: intqrt
      :name: intqrt

   .. rubric:: Description
      :name: description

   Wooldridge Source: From Salomon Brothers, Analytical Record of Yields
   and Yield Spreads, 1990. The folks at Salomon Brothers kindly
   provided the Record at no charge when I was an assistant professor at
   MIT. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('intqrt')

   .. rubric:: Format
      :name: format

   A data.frame with 124 observations on 23 variables:

   -  **r3:** bond equiv. yield, 3 mo T-bill

   -  **r6:** bond equiv. yield, 6 mo T-bill

   -  **r12:** yield on 1 yr. bond

   -  **p3:** price of 3 mo. T-bill

   -  **p6:** price of 6 mo. T-bill

   -  **hy6:** 100*(p3 - p6[_n-1])/p6[_n-1])

   -  **hy3:** r3*(91/365)

   -  **spr63:** r6 - r3

   -  **hy3_1:** hy3[_n-1]

   -  **hy6_1:** hy6[_n-1]

   -  **spr63_1:** spr63[_n-1]

   -  **hy6hy3_1:** hy6 - hy3_1

   -  **cr3:** r3 - r3_1

   -  **r3_1:** r3[_n-1]

   -  **chy6:** hy6 - hy6_1

   -  **chy3:** hy3 - hy3_1

   -  **chy6_1:** chy6[_n-1]

   -  **chy3_1:** chy3[_n-1]

   -  **cr6:** r6 - r6_1

   -  **cr6_1:** cr6[_n-1]

   -  **cr3_1:** cr3[_n-1]

   -  **r6_1:** r6[_n-1]

   -  **cspr63:** spr63 - spr63_1

   .. rubric:: Notes
      :name: notes

   A nice feature of the Salomon Brothers data is that the interest
   rates are not averaged over a month or quarter – they are
   end-of-month or end-of-quarter rates. Asset pricing theories apply to
   such “point-sampled” data, and not to averages over a period. Most
   other sources report monthly or quarterly averages. This is a good
   data set to update and test whether current data are more or less
   supportive of basic asset pricing theories.

   Used in Text: pages 405-406, 641, 646-647, 650, 652, 672, 673

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(intqrt)
