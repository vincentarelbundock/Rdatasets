.. container::

   ======= ===============
   ceosal1 R Documentation
   ======= ===============

   .. rubric:: ceosal1
      :name: ceosal1

   .. rubric:: Description
      :name: description

   Wooldridge Source: I took a random sample of data reported in the May
   6, 1991 issue of Businessweek. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('ceosal1')

   .. rubric:: Format
      :name: format

   A data.frame with 209 observations on 12 variables:

   -  **salary:** 1990 salary, thousands $

   -  **pcsalary:** percent change salary, 89-90

   -  **sales:** 1990 firm sales, millions $

   -  **roe:** return on equity, 88-90 avg

   -  **pcroe:** percent change roe, 88-90

   -  **ros:** return on firm's stock, 88-90

   -  **indus:** =1 if industrial firm

   -  **finance:** =1 if financial firm

   -  **consprod:** =1 if consumer product firm

   -  **utility:** =1 if transport. or utilties

   -  **lsalary:** natural log of salary

   -  **lsales:** natural log of sales

   .. rubric:: Notes
      :name: notes

   This kind of data collection is relatively easy for students just
   learning data analysis, and the findings can be interesting. A good
   term project is to have students collect a similar data set using a
   more recent issue of Businessweek, and to find additional variables
   that might explain differences in CEO compensation. My impression is
   that the public is still interested in CEO compensation. An
   interesting question is whether the list of explanatory variables
   included in this data set now explain less of the variation in
   log(salary) than they used to.

   Used in Text: pages 32, 35-36, 39, 159-160, 218-219, 260-261, 263,
   685, 692-693

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(ceosal1)
