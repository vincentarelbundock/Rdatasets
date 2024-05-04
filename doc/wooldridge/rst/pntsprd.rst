.. container::

   .. container::

      ======= ===============
      pntsprd R Documentation
      ======= ===============

      .. rubric:: pntsprd
         :name: pntsprd

      .. rubric:: Description
         :name: description

      Wooldridge Source: Collected by Scott Resnick, a former MSU
      undergraduate, from various newspaper sources. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('pntsprd')

      .. rubric:: Format
         :name: format

      A data.frame with 553 observations on 12 variables:

      -  **favscr:** favored team's score

      -  **undscr:** underdog's score

      -  **spread:** las vegas spread

      -  **favhome:** =1 if favored team at home

      -  **neutral:** =1 if neutral site

      -  **fav25:** =1 if favored team in top 25

      -  **und25:** =1 if underdog in top 25

      -  **fregion:** favorite's region of country

      -  **uregion:** underdog's region of country

      -  **scrdiff:** favscr - undscr

      -  **sprdcvr:** =1 if spread covered

      -  **favwin:** =1 if favored team wins

      .. rubric:: Notes
         :name: notes

      The data are for the 1994-1995 men’s college basketball seasons.
      The spread is for the day before the game was played. One might
      collect more recent data and determine whether the spread has
      become a less accurate predictor of the actual outcome in more
      recent years. In other words, in the simple regression of the
      actual score differential on the spread, is the variance larger in
      more recent years. (We should fully expect the slope coefficient
      not to be statistically different from one.)

      Used in Text: pages 300, 624, 697

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(pntsprd)
