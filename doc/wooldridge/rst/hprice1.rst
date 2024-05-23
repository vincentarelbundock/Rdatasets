.. container::

   .. container::

      ======= ===============
      hprice1 R Documentation
      ======= ===============

      .. rubric:: hprice1
         :name: hprice1

      .. rubric:: Description
         :name: description

      Wooldridge Source: Collected from the real estate pages of the
      Boston Globe during 1990. These are homes that sold in the Boston,
      MA area. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('hprice1')

      .. rubric:: Format
         :name: format

      A data.frame with 88 observations on 10 variables:

      -  **price:** house price, $1000s

      -  **assess:** assessed value, $1000s

      -  **bdrms:** number of bdrms

      -  **lotsize:** size of lot in square feet

      -  **sqrft:** size of house in square feet

      -  **colonial:** =1 if home is colonial style

      -  **lprice:** log(price)

      -  **lassess:** log(assess

      -  **llotsize:** log(lotsize)

      -  **lsqrft:** log(sqrft)

      .. rubric:: Notes
         :name: notes

      Typically, it is very easy to obtain data on selling prices and
      characteristics of homes, using publicly available data bases. It
      is interesting to match the information on houses with other
      information – such as local crime rates, quality of the local
      schools, pollution levels, and so on – and estimate the effects of
      such variables on housing prices.

      Used in Text: pages 110, 153-154, 160-161, 165, 211-212, 221, 222,
      234, 278, 280, 299, 307

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(hprice1)
