.. container::

   .. container::

      ===== ===============
      vote2 R Documentation
      ===== ===============

      .. rubric:: vote2
         :name: vote2

      .. rubric:: Description
         :name: description

      Wooldridge Source: See VOTE1.RAW Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('vote2')

      .. rubric:: Format
         :name: format

      A data.frame with 186 observations on 26 variables:

      -  **state:** state postal code

      -  **district:** U.S. Congressional district

      -  **democ:** =1 if incumbent democrat

      -  **vote90:** inc. share two-party vote, 1990

      -  **vote88:** inc. share two-party vote, 1988

      -  **inexp90:** inc. camp. expends., 1990

      -  **chexp90:** chl. camp. expends., 1990

      -  **inexp88:** inc. camp. expends., 1988

      -  **chexp88:** chl. camp. expends., 1988

      -  **prtystr:** percent vote pres., same party, 1988

      -  **rptchall:** =1 if a repeat challenger

      -  **tenure:** years in H.R.

      -  **lawyer:** =1 if law degree

      -  **linexp90:** log(inexp90)

      -  **lchexp90:** log(chexp90)

      -  **linexp88:** log(inexp88)

      -  **lchexp88:** log(chexp88)

      -  **incshr90:** 100*(inexp90/(inexp90+chexp90))

      -  **incshr88:** 100*(inexp88/(inexp88+chexp88))

      -  **cvote:** vote90 - vote88

      -  **clinexp:** linexp90 - linexp88

      -  **clchexp:** lchexp90 - lchexp88

      -  **cincshr:** incshr90 - incshr88

      -  **win88:** =1 by definition

      -  **win90:** =1 if inc. wins, 1990

      -  **cwin:** win90 - win88

      .. rubric:: Notes
         :name: notes

      These are panel data, at the Congressional district level,
      collected for the 1988 and 1990 U.S. House of Representative
      elections. Of course, much more recent data are available,
      possibly even in electronic form.

      Used in Text: pages 335-336, 478, 699

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(vote2)
