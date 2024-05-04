.. container::

   .. container::

      ======= ===============
      athlet1 R Documentation
      ======= ===============

      .. rubric:: athlet1
         :name: athlet1

      .. rubric:: Description
         :name: description

      Wooldridge Sources: Peterson's Guide to Four Year Colleges, 1994
      and 1995 (24th and 25th editions). Princeton University Press.
      Princeton, NJ. The Official 1995 College Basketball Records Book,
      1994, NCAA. 1995 Information Please Sports Almanac (6th edition).
      Houghton Mifflin. New York, NY. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('athlet1')

      .. rubric:: Format
         :name: format

      A data.frame with 118 observations on 23 variables:

      -  **year:** 1992 or 1993

      -  **apps:** # applics for admission

      -  **top25:** perc frsh class in 25 hs perc

      -  **ver500:** perc frsh >= 500 on verbal SAT

      -  **mth500:** perc frsh >= 500 on math SAT

      -  **stufac:** student-faculty ratio

      -  **bowl:** = 1 if bowl game in prev yr

      -  **btitle:** = 1 if men's cnf chmps prv yr

      -  **finfour:** = 1 if men's final 4 prv yr

      -  **lapps:** log(apps)

      -  **d93:** =1 if year = 1993

      -  **avg500:** (ver500+mth500)/2

      -  **cfinfour:** change in finfour

      -  **clapps:** change in lapps

      -  **cstufac:** change in stufac

      -  **cbowl:** change in bowl

      -  **cavg500:** change in avg500

      -  **cbtitle:** change in btitle

      -  **lapps_1:** lapps lagged

      -  **school:** name of university

      -  **ctop25:** change in top25

      -  **bball:** =1 if btitle or finfour

      -  **cbball:** change in bball

      .. rubric:: Notes
         :name: notes

      These data were collected by Patrick Tulloch, an MSU economics
      major, for a term project. The “athletic success” variables are
      for the year prior to the enrollment and academic data. Updating
      these data to get a longer stretch of years, and including
      appearances in the “Sweet 16” NCAA basketball tournaments, would
      make for a more convincing analysis. With the growing popularity
      of women’s sports, especially basketball, an analysis that
      includes success in women’s athletics would be interesting.

      Used in Text: page 697

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(athlet1)
