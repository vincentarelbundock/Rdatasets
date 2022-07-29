.. container::

   ====== ===============
   rdchem R Documentation
   ====== ===============

   .. rubric:: rdchem
      :name: rdchem

   .. rubric:: Description
      :name: description

   Wooldridge Source: From Businessweek R&D Scoreboard, October 25,
   1991. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('rdchem')

   .. rubric:: Format
      :name: format

   A data.frame with 32 observations on 8 variables:

   -  **rd:** R&D spending, millions

   -  **sales:** firm sales, millions

   -  **profits:** profits, millions

   -  **rdintens:** rd as percent of sales

   -  **profmarg:** profits as percent of sales

   -  **salessq:** sales^2

   -  **lsales:** log(sales)

   -  **lrd:** log(rd)

   .. rubric:: Notes
      :name: notes

   It would be interesting to collect more recent data and see whether
   the R&D/firm size relationship has changed over time.

   Used in Text: pages 64, 139-140, 159-160, 204, 218, 327-329, 339

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(rdchem)
