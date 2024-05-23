.. container::

   .. container::

      ==== ===============
      fair R Documentation
      ==== ===============

      .. rubric:: fair
         :name: fair

      .. rubric:: Description
         :name: description

      Wooldridge Source: R.C. Fair (1996), “Econometrics and
      Presidential Elections,” Journal of Economic Perspectives 10,
      89-102. The data set is provided in the article. Data loads
      lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('fair')

      .. rubric:: Format
         :name: format

      A data.frame with 21 observations on 28 variables:

      -  **year:** 1916 to 1992, by 4

      -  **V:** prop. dem. vote

      -  **I:** =1 if demwh, -1 if repwh

      -  **DPER:** incumbent running

      -  **DUR:** duration

      -  **g3:** avg ann grwth rte, prev 3 qrts

      -  **p15:** avg ann inf rate, prev 15 qtrs

      -  **n:** quarters of good news

      -  **g2:** avg ann grwth rte, prev 2 qrts

      -  **gYR:** ann grwth rte, prev year

      -  **p8:** avg ann inf rate, prev 8 qtrs

      -  **p2YR:** inf rte over 2 yr period

      -  **Ig2:** I*g2

      -  **Ip8:** I*p8

      -  **demwins:** =1 if V > .5

      -  **In:** I*n

      -  **d:** =1 in 1920, 1944,1948

      -  **Id:** I*d

      -  **Ig3:** I*g3

      -  **Ip151md:** I*p15*(1-d)

      -  **In1md:** I*n*(1-d)

      .. rubric:: Notes
         :name: notes

      An updated version of this data set, through the 2004 election, is
      available at Professor Fair’s web site at Yale University:
      http://fairmodel.econ.yale.edu/rayfair/pdf/2001b.htm. Students
      might want to try their own hands at predicting the most recent
      election outcome, but they should be restricted to no more than a
      handful of explanatory variables because of the small sample size.

      Used in Text: pages 362-363, 440, 442

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(fair)
