.. container::

   .. container::

      ====== ===============
      crime3 R Documentation
      ====== ===============

      .. rubric:: crime3
         :name: crime3

      .. rubric:: Description
         :name: description

      Wooldridge Source: E. Eide (1994), Economics of Crime: Deterrence
      of the Rational Offender. Amsterdam: North Holland. The data come
      from Tables A3 and A6. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('crime3')

      .. rubric:: Format
         :name: format

      A data.frame with 106 observations on 12 variables:

      -  **district:** district number

      -  **year:** 72 or 78

      -  **crime:** crimes per 1000 people

      -  **clrprc1:** clear-up perc, prior year

      -  **clrprc2:** clear-up perc, two-years prior

      -  **d78:** =1 if year = 78

      -  **avgclr:** (clrprc1 + clrprc2)/2

      -  **lcrime:** log(crime)

      -  **clcrime:** change in lcrime

      -  **cavgclr:** change in avgclr

      -  **cclrprc1:** change in clrprc1

      -  **cclrprc2:** change in clrprc2

      .. rubric:: Notes
         :name: notes

      These data are for the years 1972 and 1978 for 53 police districts
      in Norway. Much larger data sets for more years can be obtained
      for the United States, although a measure of the “clear-up” rate
      is needed.

      Used in Text: pages 464-465, 477-478

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(crime3)
