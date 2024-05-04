.. container::

   .. container::

      ======= ===============
      charity R Documentation
      ======= ===============

      .. rubric:: charity
         :name: charity

      .. rubric:: Description
         :name: description

      Wooldridge Source: P.H. Franses and R. Paap (2001), Quantitative
      Models in Marketing Research. Cambridge: Cambridge University
      Press. Professor Franses kindly provided the data. Data loads
      lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('charity')

      .. rubric:: Format
         :name: format

      A data.frame with 4268 observations on 8 variables:

      -  **respond:** =1 if responded with gift

      -  **gift:** amount of gift, Dutch guilders

      -  **resplast:** =1 if responded to most recent mailing

      -  **weekslast:** number of weeks since last response

      -  **propresp:** response rate to mailings

      -  **mailsyear:** number of mailings per year

      -  **giftlast:** amount of most recent gift

      -  **avggift:** average of past gifts

      .. rubric:: Notes
         :name: notes

      This data set can be used to illustrate probit and Tobit models,
      and to study the linear approximations to them.

      Used in Text: pages 65, 112-113, 266-267, 628

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(charity)
