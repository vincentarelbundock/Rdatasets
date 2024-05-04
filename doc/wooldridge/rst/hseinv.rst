.. container::

   .. container::

      ====== ===============
      hseinv R Documentation
      ====== ===============

      .. rubric:: hseinv
         :name: hseinv

      .. rubric:: Description
         :name: description

      Wooldridge Source: D. McFadden (1994), “Demographics, the Housing
      Market, and the Welfare of the Elderly,” in D.A. Wise (ed.),
      Studies in the Economics of Aging. Chicago: University of Chicago
      Press, 225-285. The data are contained in the article. Data loads
      lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('hseinv')

      .. rubric:: Format
         :name: format

      A data.frame with 42 observations on 14 variables:

      -  **year:** 1947-1988

      -  **inv:** real housing inv, millions $

      -  **pop:** population, 1000s

      -  **price:** housing price index; 1982 = 1

      -  **linv:** log(inv)

      -  **lpop:** log(pop)

      -  **lprice:** log(price)

      -  **t:** time trend: t=1,...,42

      -  **invpc:** per capita inv: inv/pop

      -  **linvpc:** log(invpc)

      -  **lprice_1:** lprice[_n-1]

      -  **linvpc_1:** linvpc[_n-1]

      -  **gprice:** lprice - lprice_1

      -  **ginvpc:** linvpc - linvpc_1

      .. rubric:: Used in Text
         :name: used-in-text

      pages 367, 370, 407, 638-639, 822?

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(hseinv)
