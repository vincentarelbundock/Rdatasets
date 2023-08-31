.. container::

   ======== ===============
   prminwge R Documentation
   ======== ===============

   .. rubric:: prminwge
      :name: prminwge

   .. rubric:: Description
      :name: description

   Wooldridge Source: A.J. Castillo-Freeman and R.B. Freeman (1992),
   “When the Minimum Wage Really Bites: The Effect of the U.S.-Level
   Minimum Wage on Puerto Rico,” in Immigration and the Work Force,
   edited by G.J. Borjas and R.B. Freeman, 177-211. Chicago: University
   of Chicago Press. The data are reported in the article. Data loads
   lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('prminwge')

   .. rubric:: Format
      :name: format

   A data.frame with 38 observations on 25 variables:

   -  **year:** 1950-1987

   -  **avgmin:** weighted avg min wge, 44 indust

   -  **avgwage:** wghted avg hrly wge, 44 indust

   -  **kaitz:** Kaitz min wage index

   -  **avgcov:** wghted avg coverage, 8 indust

   -  **covt:** economy-wide coverage of min wg

   -  **mfgwage:** avg manuf. wage

   -  **prdef:** Puerto Rican price deflator

   -  **prepop:** PR employ/popul ratio

   -  **prepopf:** PR employ/popul ratio, alter.

   -  **prgnp:** PR GNP

   -  **prunemp:** PR unemployment rate

   -  **usgnp:** US GNP

   -  **t:** time trend: 1 to 38

   -  **post74:** time trend: starts in 1974

   -  **lprunemp:** log(prunemp)

   -  **lprgnp:** log(prgnp)

   -  **lusgnp:** log(usgnp)

   -  **lkaitz:** log(kaitz)

   -  **lprun_1:** lprunemp[\_n-1]

   -  **lprepop:** log(prepop)

   -  **lprep_1:** lprepop[\_n-1]

   -  **mincov:** (avgmin/avgwage)*avgcov

   -  **lmincov:** log(mincov)

   -  **lavgmin:** log(avgmin)

   .. rubric:: Notes
      :name: notes

   Given the ongoing debate on the employment effects of the minimum
   wage, this would be a great data set to try to update. The coverage
   rates are the most difficult variables to construct.

   Used in Text: pages 356-357, 369-370, 420-421, 434

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(prminwge)
