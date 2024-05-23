.. container::

   .. container::

      ====== ===============
      crime1 R Documentation
      ====== ===============

      .. rubric:: crime1
         :name: crime1

      .. rubric:: Description
         :name: description

      Wooldridge Source: J. Grogger (1991), “Certainty vs. Severity of
      Punishment,” Economic Inquiry 29, 297-309. Professor Grogger
      kindly provided a subset of the data he used in his article. Data
      loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('crime1')

      .. rubric:: Format
         :name: format

      A data.frame with 2725 observations on 16 variables:

      -  **narr86:** # times arrested, 1986

      -  **nfarr86:** # felony arrests, 1986

      -  **nparr86:** # property crme arr., 1986

      -  **pcnv:** proportion of prior convictions

      -  **avgsen:** avg sentence length, mos.

      -  **tottime:** time in prison since 18 (mos.)

      -  **ptime86:** mos. in prison during 1986

      -  **qemp86:** # quarters employed, 1986

      -  **inc86:** legal income, 1986, $100s

      -  **durat:** recent unemp duration

      -  **black:** =1 if black

      -  **hispan:** =1 if Hispanic

      -  **born60:** =1 if born in 1960

      -  **pcnvsq:** pcnv^2

      -  **pt86sq:** ptime86^2

      -  **inc86sq:** inc86^2

      .. rubric:: Used in Text
         :name: used-in-text

      pages 82-83, 173-174, 180, 252-253, 275, 299, 305-306, 607-608,
      625

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(crime1)
