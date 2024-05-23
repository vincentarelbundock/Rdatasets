.. container::

   .. container::

      ====== ===============
      nbasal R Documentation
      ====== ===============

      .. rubric:: nbasal
         :name: nbasal

      .. rubric:: Description
         :name: description

      Wooldridge Source: Collected by Christopher Torrente, a former MSU
      undergraduate, for a term project. He obtained the salary data and
      the career statistics from The Complete Handbook of Pro
      Basketball, 1995, edited by Zander Hollander. New York: Signet.
      The demographic information (marital status, number of children,
      and so on) was obtained from the teams’ 1994-1995 media guides.
      Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('nbasal')

      .. rubric:: Format
         :name: format

      A data.frame with 269 observations on 22 variables:

      -  **marr:** =1 if married

      -  **wage:** annual salary, thousands $

      -  **exper:** years as professional player

      -  **age:** age in years

      -  **coll:** years played in college

      -  **games:** average games per year

      -  **minutes:** average minutes per year

      -  **guard:** =1 if guard

      -  **forward:** =1 if forward

      -  **center:** =1 if center

      -  **points:** points per game

      -  **rebounds:** rebounds per game

      -  **assists:** assists per game

      -  **draft:** draft number

      -  **allstar:** =1 if ever all star

      -  **avgmin:** minutes per game

      -  **lwage:** log(wage)

      -  **black:** =1 if black

      -  **children:** =1 if has children

      -  **expersq:** exper^2

      -  **agesq:** age^2

      -  **marrblck:** marr*black

      .. rubric:: Notes
         :name: notes

      A panel version of this data set could be useful for further
      isolating productivity effects of marital status. One would need
      to obtain information on enough different players in at least two
      years, where some players who were not married in the initial year
      are married in later years. Fixed effects (or first differencing,
      for two years) is the natural estimation method.

      Used in Text: pages 222-223, 264-265

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(nbasal)
