.. container::

   .. container::

      ===== ===============
      earns R Documentation
      ===== ===============

      .. rubric:: earns
         :name: earns

      .. rubric:: Description
         :name: description

      Wooldridge Source: Economic Report of the President, 1989, Table
      B-47. The data are for the non-farm business sector. Data loads
      lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('earns')

      .. rubric:: Format
         :name: format

      A data.frame with 41 observations on 14 variables:

      -  **year:** 1947 to 1987

      -  **wkearns:** avg. real weekly earnings

      -  **wkhours:** avg. weekly hours

      -  **outphr:** output per labor hour

      -  **hrwage:** wkearns/wkhours

      -  **lhrwage:** log(hrwage)

      -  **loutphr:** log(outphr)

      -  **t:** time trend: t=1 to 47

      -  **ghrwage:** lhrwage - lhrwage[_n-1]

      -  **goutphr:** loutphr - loutphr[_n-1]

      -  **ghrwge_1:** ghrwage[_n-1]

      -  **goutph_1:** goutphr[_n-1]

      -  **goutph_2:** goutphr[_n-2]

      -  **lwkhours:** log(wkhours)

      .. rubric:: Notes
         :name: notes

      These data could be usefully updated, but changes in reporting
      conventions in more recent ERPs may make that difficult.

      Used in Text: pages 363-364, 398, 407

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(earns)
