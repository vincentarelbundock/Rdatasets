.. container::

   ======= ===============
   rdtelec R Documentation
   ======= ===============

   .. rubric:: rdtelec
      :name: rdtelec

   .. rubric:: Description
      :name: description

   Wooldridge Source: See RDCHEM.RAW Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('rdtelec')

   .. rubric:: Format
      :name: format

   A data.frame with 29 observations on 6 variables:

   -  **rd:** R&D spending, millions $

   -  **sales:** firm sales, millions $

   -  **rdintens:** rd as percent of sales

   -  **lrd:** log(rd)

   -  **lsales:** log(sales)

   -  **salessq:** sales^2

   .. rubric:: Notes
      :name: notes

   According to these data, the R&D/firm size relationship is different
   in the telecommunications industry than in the chemical industry:
   there is pretty strong evidence that R&D intensity decreases with
   firm size in telecommunications. Of course, that was in 1991. The
   data could easily be updated, and a panel data set could be
   constructed.

   Used in Text: not used

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(rdtelec)
