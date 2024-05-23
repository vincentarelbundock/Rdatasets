.. container::

   .. container::

      ====== ===============
      beauty R Documentation
      ====== ===============

      .. rubric:: beauty
         :name: beauty

      .. rubric:: Description
         :name: description

      Wooldridge Source: Hamermesh, D.S. and J.E. Biddle (1994), “Beauty
      and the Labor Market,” American Economic Review 84, 1174-1194.
      Professor Hamermesh kindly provided me with the data. For
      manageability, I have included only a subset of the variables,
      which results in somewhat larger sample sizes than reported for
      the regressions in the Hamermesh and Biddle paper. Data loads
      lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('beauty')

      .. rubric:: Format
         :name: format

      A data.frame with 1260 observations on 17 variables:

      -  **wage:** hourly wage

      -  **lwage:** log(wage)

      -  **belavg:** =1 if looks <= 2

      -  **abvavg:** =1 if looks >=4

      -  **exper:** years of workforce experience

      -  **looks:** from 1 to 5

      -  **union:** =1 if union member

      -  **goodhlth:** =1 if good health

      -  **black:** =1 if black

      -  **female:** =1 if female

      -  **married:** =1 if married

      -  **south:** =1 if live in south

      -  **bigcity:** =1 if live in big city

      -  **smllcity:** =1 if live in small city

      -  **service:** =1 if service industry

      -  **expersq:** exper^2

      -  **educ:** years of schooling

      .. rubric:: Used in Text
         :name: used-in-text

      pages 238-239, 265-266

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(beauty)
