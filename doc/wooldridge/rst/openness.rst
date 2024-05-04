.. container::

   .. container::

      ======== ===============
      openness R Documentation
      ======== ===============

      .. rubric:: openness
         :name: openness

      .. rubric:: Description
         :name: description

      Wooldridge Source: D. Romer (1993), “Openness and Inflation:
      Theory and Evidence,” Quarterly Journal of Economics 108, 869-903.
      The data are included in the article. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('openness')

      .. rubric:: Format
         :name: format

      A data.frame with 114 observations on 12 variables:

      -  **open:** imports as percent GDP, '73-

      -  **inf:** avg. annual inflation, '73-

      -  **pcinc:** 1980 per capita inc., U.S. $

      -  **land:** land area, square miles

      -  **oil:** =1 if major oil producer

      -  **good:** =1 if 'good' data

      -  **lpcinc:** log(pcinc)

      -  **lland:** log(land)

      -  **lopen:** log(open)

      -  **linf:** log(inf)

      -  **opendec:** open/100

      -  **linfdec:** log(inf/100)

      .. rubric:: Used in Text
         :name: used-in-text

      pages 566, 579

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(openness)
