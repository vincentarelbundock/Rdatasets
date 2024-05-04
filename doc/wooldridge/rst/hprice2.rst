.. container::

   .. container::

      ======= ===============
      hprice2 R Documentation
      ======= ===============

      .. rubric:: hprice2
         :name: hprice2

      .. rubric:: Description
         :name: description

      Wooldridge Source: D. Harrison and D.L. Rubinfeld (1978), “Hedonic
      Housing Prices and the Demand for Clean Air,” by Harrison, D. and
      D.L.Rubinfeld, Journal of Environmental Economics and Management
      5, 81-102. Diego Garcia, a former Ph.D. student in economics at
      MIT, kindly provided these data, which he obtained from the book
      Regression Diagnostics: Identifying Influential Data and Sources
      of Collinearity, by D.A. Belsey, E. Kuh, and R. Welsch, 1990. New
      York: Wiley. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('hprice2')

      .. rubric:: Format
         :name: format

      A data.frame with 506 observations on 12 variables:

      -  **price:** median housing price, $

      -  **crime:** crimes committed per capita

      -  **nox:** nit ox concen; parts per 100m

      -  **rooms:** avg number of rooms

      -  **dist:** wght dist to 5 employ centers

      -  **radial:** access. index to rad. hghwys

      -  **proptax:** property tax per $1000

      -  **stratio:** average student-teacher ratio

      -  **lowstat:** perc of people 'lower status'

      -  **lprice:** log(price)

      -  **lnox:** log(nox)

      -  **lproptax:** log(proptax)

      .. rubric:: Notes
         :name: notes

      The census contains rich information on variables such as median
      housing prices, median income levels, average family size, and so
      on, for fairly small geographical areas. If such data can be
      merged with pollution data, one can update the Harrison and
      Rubinfeld study. Presumably, this has been done in academic
      journals.

      Used in Text: pages 108, 132-133, 190-191, 196-197.

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(hprice2)
