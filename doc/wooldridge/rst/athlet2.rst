.. container::

   ======= ===============
   athlet2 R Documentation
   ======= ===============

   .. rubric:: athlet2
      :name: athlet2

   .. rubric:: Description
      :name: description

   Wooldridge Sources: Peterson's Guide to Four Year Colleges, 1995
   (25th edition). Princeton University Press. 1995 Information Please
   Sports Almanac (6th edition). Houghton Mifflin. New York, NY Data
   loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('athlet2')

   .. rubric:: Format
      :name: format

   A data.frame with 30 observations on 10 variables:

   -  **dscore:** home scr. - vist. scr., 1993

   -  **dinstt:** diff. in-state tuit., 1994

   -  **doutstt:** diff. out-state tuit., 1994

   -  **htpriv:** =1 if home team priv. sch.

   -  **vtpriv:** =1 if vist. team priv. sch.

   -  **dapps:** diff. in applications, 1994

   -  **htwrd:** =1 if home win. record, 1993

   -  **vtwrd:** =1 if vist. win. record, 1993

   -  **dwinrec:** htwrd - vtwrd

   -  **dpriv:** htpriv - vtpriv

   .. rubric:: Notes
      :name: notes

   These data were collected by Paul Anderson, an MSU economics major,
   for a term project. The score from football outcomes for natural
   rivals (Michigan-Michigan State, California-Stanford, Florida-Florida
   State, to name a few) is matched with application and academic data.
   The application and tuition data are for Fall 1994. Football records
   and scores are from 1993 football season. Extended these data to
   obtain a long stretch of panel data and other “natural” rivals could
   be very interesting.

   Used in Text: page 697

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(athlet2)
