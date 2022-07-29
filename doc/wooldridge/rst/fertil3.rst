.. container::

   ======= ===============
   fertil3 R Documentation
   ======= ===============

   .. rubric:: fertil3
      :name: fertil3

   .. rubric:: Description
      :name: description

   Wooldridge Source: L.A. Whittington, J. Alm, and H.E. Peters (1990),
   “Fertility and the Personal Exemption: Implicit Pronatalist Policy in
   the United States,” American Economic Review 80, 545-556. The data
   are given in the article. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('fertil3')

   .. rubric:: Format
      :name: format

   A data.frame with 72 observations on 24 variables:

   -  **gfr:** births per 1000 women 15-44

   -  **pe:** real value pers. exemption, $

   -  **year:** 1913 to 1984

   -  **t:** time trend, t=1,...,72

   -  **tsq:** t^2

   -  **pe_1:** pe[_n-1]

   -  **pe_2:** pe[_n-2]

   -  **pe_3:** pe[_n-3]

   -  **pe_4:** pe[_n-4]

   -  **pill:** =1 if year >= 1963

   -  **ww2:** =1, 1941 to 1945

   -  **tcu:** t^3

   -  **cgfr:** change in gfr: gfr - gfr_1

   -  **cpe:** pe - pe_1

   -  **cpe_1:** cpe[_n-1]

   -  **cpe_2:** cpe[_n-2]

   -  **cpe_3:** cpe[_n-3]

   -  **cpe_4:** cpe[_n-4]

   -  **gfr_1:** gfr[_n-1]

   -  **cgfr_1:** cgfr[_n-1]

   -  **cgfr_2:** cgfr[_n-2]

   -  **cgfr_3:** cgfr[_n-3]

   -  **cgfr_4:** cgfr[_n-4]

   -  **gfr_2:** gfr[_n-2]

   .. rubric:: Used in Text
      :name: used-in-text

   pages 358, 377, 378, 397-398, 401, 408, 441, 649, 664-665, 673

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(fertil3)
