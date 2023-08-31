.. container::

   ====== ===============
   crime2 R Documentation
   ====== ===============

   .. rubric:: crime2
      :name: crime2

   .. rubric:: Description
      :name: description

   Wooldridge Source: These data were collected by David Dicicco, a
   former MSU undergraduate, for a final project. They came from various
   issues of the County and City Data Book, and are for the years 1982
   and 1985. Unfortunately, I do not have the list of cities. Data loads
   lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('crime2')

   .. rubric:: Format
      :name: format

   A data.frame with 92 observations on 34 variables:

   -  **pop:** population

   -  **crimes:** total number index crimes

   -  **unem:** unemployment rate

   -  **officers:** number police officers

   -  **pcinc:** per capita income

   -  **west:** =1 if city in west

   -  **nrtheast:** =1 if city in NE

   -  **south:** =1 if city in south

   -  **year:** 82 or 87

   -  **area:** land area, square miles

   -  **d87:** =1 if year = 87

   -  **popden:** people per sq mile

   -  **crmrte:** crimes per 1000 people

   -  **offarea:** officers per sq mile

   -  **lawexpc:** law enforce. expend. pc, $

   -  **polpc:** police per 1000 people

   -  **lpop:** log(pop)

   -  **loffic:** log(officers)

   -  **lpcinc:** log(pcinc)

   -  **llawexpc:** log(lawexpc)

   -  **lpopden:** log(popden)

   -  **lcrimes:** log(crimes)

   -  **larea:** log(area)

   -  **lcrmrte:** log(crmrte)

   -  **clcrimes:** change in lcrimes

   -  **clpop:** change in lpop

   -  **clcrmrte:** change in lcrmrte

   -  **lpolpc:** log(polpc)

   -  **clpolpc:** change in lpolpc

   -  **cllawexp:** change in llawexp

   -  **cunem:** change in unem

   -  **clpopden:** change in lpopden

   -  **lcrmrt_1:** lcrmrte lagged

   -  **ccrmrte:** change in crmrte

   .. rubric:: Notes
      :name: notes

   Very rich crime data sets, at the county, or even city, level, can be
   collected using the FBI’s Uniform Crime Reports. These data can be
   matched up with demographic and economic data, at least for census
   years. The County and City Data Book contains a variety of
   statistics, but the years do not always match up. These data sets can
   be used investigate issues such as the effects of casinos on city or
   county crime rates.

   Used in Text: pages 313-314, 459-460

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(crime2)
