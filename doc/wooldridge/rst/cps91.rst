.. container::

   ===== ===============
   cps91 R Documentation
   ===== ===============

   .. rubric:: cps91
      :name: cps91

   .. rubric:: Description
      :name: description

   Wooldridge Source: Professor Daniel Hamermesh, at the University of
   Texas, compiled these data from the May 1991 Current Population
   Survey. Professor Hamermesh kindly provided these data. Data loads
   lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('cps91')

   .. rubric:: Format
      :name: format

   A data.frame with 5634 observations on 24 variables:

   -  **husage:** husband's age

   -  **husunion:** =1 if hus. in union

   -  **husearns:** hus. weekly earns

   -  **huseduc:** husband's yrs schooling

   -  **husblck:** =1 if hus. black

   -  **hushisp:** =1 if hus. hispanic

   -  **hushrs:** hus. weekly hours

   -  **kidge6:** =1 if have child >= 6

   -  **earns:** wife's weekly earnings

   -  **age:** wife's age

   -  **black:** =1 if wife black

   -  **educ:** wife's yrs schooling

   -  **hispanic:** =1 if wife hispanic

   -  **union:** =1 if wife in union

   -  **faminc:** annual family income

   -  **husexp:** huseduc - husage - 6

   -  **exper:** age - educ - 6

   -  **kidlt6:** =1 if have child < 6

   -  **hours:** wife's weekly hours

   -  **expersq:** exper^2

   -  **nwifeinc:** non-wife inc, $1000s

   -  **inlf:** =1 if wife in labor force

   -  **hrwage:** earns/hours

   -  **lwage:** log(hrwage)

   .. rubric:: Notes
      :name: notes

   This is much bigger than the other CPS data sets even though the
   sample is restricted to married women. (CPS91.RAW contains many more
   observations than MROZ.RAW, too.) In addition to the usual human
   capital variables for the women in the sample, we have information on
   the husband. Therefore, we can estimate a labor supply function as in
   Chapter 16, although the validity of potential experience as an IV
   for log(wage) is questionable. (MROZ.RAW contains an actual
   experience variable.) Perhaps more convincing is to add hours to the
   wage offer equation, and instrument hours with indicators for young
   and old children. This data set also contains a union membership
   indicator. The web site for the National Bureau of Economic Research
   makes it very easy now to download CPS data files in a variety
   offormats. Go to http://www.nber.org/data/cps_basic.html.

   Used in Text: page 627-628

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(cps91)
