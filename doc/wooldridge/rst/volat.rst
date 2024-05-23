.. container::

   .. container::

      ===== ===============
      volat R Documentation
      ===== ===============

      .. rubric:: volat
         :name: volat

      .. rubric:: Description
         :name: description

      Wooldridge Source: J.D. Hamilton and L. Gang (1996), “Stock Market
      Volatility and the Business Cycle,” Journal of Applied
      Econometrics 11, 573-593. I obtained these data from the Journal
      of Applied Econometrics data archive at
      http://qed.econ.queensu.ca/jae/ Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('volat')

      .. rubric:: Format
         :name: format

      A data.frame with 558 observations on 17 variables:

      -  **date:** 1947.01 to 1993.06

      -  **sp500:** S&P 500 index

      -  **divyld:** div. yield annualized rate

      -  **i3:** 3 mo. T-bill annualized rate

      -  **ip:** index of industrial production

      -  **pcsp:** pct chg, sp500, ann rate

      -  **rsp500:** return on sp500: pcsp + divyld

      -  **pcip:** pct chg, IP, ann rate

      -  **ci3:** i3 - i3[\_n-1]

      -  **ci3_1:** ci3[\_n-1]

      -  **ci3_2:** ci3[\_n-2]

      -  **pcip_1:** pcip[\_n-1]

      -  **pcip_2:** pcip[\_n-2]

      -  **pcip_3:** pcip[\_n-3]

      -  **pcsp_1:** pcip[\_n-1]

      -  **pcsp_2:** pcip[\_n-2]

      -  **pcsp_3:** pcip[\_n-3]

      .. rubric:: Used in Text
         :name: used-in-text

      pages 378, 670, 671, 674

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(volat)
