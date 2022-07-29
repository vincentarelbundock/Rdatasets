.. container::

   ====== ===============
   jtrain R Documentation
   ====== ===============

   .. rubric:: jtrain
      :name: jtrain

   .. rubric:: Description
      :name: description

   Wooldridge Source: H. Holzer, R. Block, M. Cheatham, and J. Knott
   (1993), “Are Training Subsidies Effective? The Michigan Experience,”
   Industrial and Labor Relations Review 46, 625-636. The authors kindly
   provided the data. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('jtrain')

   .. rubric:: Format
      :name: format

   A data.frame with 471 observations on 30 variables:

   -  **year:** 1987, 1988, or 1989

   -  **fcode:** firm code number

   -  **employ:** # employees at plant

   -  **sales:** annual sales, $

   -  **avgsal:** average employee salary

   -  **scrap:** scrap rate (per 100 items)

   -  **rework:** rework rate (per 100 items)

   -  **tothrs:** total hours training

   -  **union:** =1 if unionized

   -  **grant:** = 1 if received grant

   -  **d89:** = 1 if year = 1989

   -  **d88:** = 1 if year = 1988

   -  **totrain:** total employees trained

   -  **hrsemp:** tothrs/totrain

   -  **lscrap:** log(scrap)

   -  **lemploy:** log(employ)

   -  **lsales:** log(sales)

   -  **lrework:** log(rework)

   -  **lhrsemp:** log(1 + hrsemp)

   -  **lscrap_1:** lagged lscrap; missing 1987

   -  **grant_1:** lagged grant; assumed 0 in 1987

   -  **clscrap:** lscrap - lscrap_1; year > 1987

   -  **cgrant:** grant - grant_1

   -  **clemploy:** lemploy - lemploy[_n-1]

   -  **clsales:** lavgsal - lavgsal[_n-1]

   -  **lavgsal:** log(avgsal)

   -  **clavgsal:** lavgsal - lavgsal[_n-1]

   -  **cgrant_1:** cgrant[_n-1]

   -  **chrsemp:** hrsemp - hrsemp[_n-1]

   -  **clhrsemp:** lhrsemp - lhrsemp[_n-1]

   .. rubric:: Used in Text
      :name: used-in-text

   pages 137, 161, 233, 254, 339, 465-466, 479, 486-487, 492, 504,
   541-542, 774-775, 786-787, 788, 819.

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(jtrain)
