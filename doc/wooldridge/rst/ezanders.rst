.. container::

   .. container::

      ======== ===============
      ezanders R Documentation
      ======== ===============

      .. rubric:: ezanders
         :name: ezanders

      .. rubric:: Description
         :name: description

      Wooldridge Source: L.E. Papke (1994), “Tax Policy and Urban
      Development: Evidence from the Indiana Enterprise Zone Program,”
      Journal of Public Economics 54, 37-49. Professor Papke kindly
      provided these data. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('ezanders')

      .. rubric:: Format
         :name: format

      A data.frame with 108 observations on 25 variables:

      -  **month:** name of month

      -  **uclms:** unemployment claims

      -  **ez:** =1 if enterprise zone

      -  **year:** 1980 through 1988

      -  **y81:** =1 if year == 1981

      -  **y82:**

      -  **y83:**

      -  **y84:**

      -  **y85:**

      -  **y86:**

      -  **y87:**

      -  **y88:**

      -  **luclms:** log(uclms)

      -  **jan:** =1 if month == JAN

      -  **feb:**

      -  **mar:**

      -  **apr:**

      -  **may:**

      -  **jun:**

      -  **jul:**

      -  **aug:**

      -  **sep:**

      -  **oct:**

      -  **nov:**

      -  **dec:**

      .. rubric:: Notes
         :name: notes

      These are actually monthly unemployment claims for the Anderson
      enterprise zone. Papke used annualized data, across many zones and
      non-zones, in her original analysis.

      Used in Text: page 377

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(ezanders)
