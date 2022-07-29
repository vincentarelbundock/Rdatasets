.. container::

   ======= ===============
   lowbrth R Documentation
   ======= ===============

   .. rubric:: lowbrth
      :name: lowbrth

   .. rubric:: Description
      :name: description

   Wooldridge Source: Source: Statistical Abstract of the United States,
   1990, 1993, and 1994. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('lowbrth')

   .. rubric:: Format
      :name: format

   A data.frame with 100 observations on 36 variables:

   -  **year:** 1987 or 1990

   -  **lowbrth:** perc births low weight

   -  **infmort:** infant mortality rate

   -  **afdcprt:** # participants in AFDC, 1000s

   -  **popul:** population, 1000s

   -  **pcinc:** per capita income

   -  **physic:** # physicians, 1000s

   -  **afdcprc:** percent of pop in AFDC

   -  **d90:** =1 if year == 1990

   -  **lpcinc:** log of pcinc

   -  **cafdcprc:** change in afdcprc

   -  **clpcinc:** change in lpcinc

   -  **lphysic:** log of physic

   -  **clphysic:** change in lphysic

   -  **clowbrth:** change in lowbrth

   -  **cinfmort:** change in infmort

   -  **afdcpay:** avg monthly AFDC payment

   -  **afdcinc:** afdcpay as percent pcinc

   -  **lafdcpay:** log of afdcpay

   -  **clafdcpy:** change in lafdcpay

   -  **cafdcinc:** change in afdcinc

   -  **stateabb:** state postal code

   -  **state:** name of state

   -  **beds:** # hospital beds, 1000s

   -  **bedspc:** beds per capita

   -  **lbedspc:** log(bedspc)

   -  **clbedspc:** change in lbedspc

   -  **povrate:** percent people below poverty line

   -  **cpovrate:** change in povrate

   -  **afdcpsq:** afdcper^2

   -  **cafdcpsq:** change in afdcpsq

   -  **physicpc:** physicians per capita

   -  **lphypc:** log(physicpc)

   -  **clphypc:** change in lphypc

   -  **lpopul:** log(popul)

   -  **clpopul:** change in lpopul

   .. rubric:: Notes
      :name: notes

   This data set can be used very much like INFMRT.RAW. It contains two
   years of state-level panel data. In fact, it is a superset of
   INFMRT.RAW. The key is that it contains information on low birth
   weights, as well as infant mortality. It also contains state
   identifies, so that several years of more recent data could be added
   for a term project. Putting in the variable afcdprc and its square
   leads to some interesting findings for pooled OLS and fixed effects
   (first differencing). After differencing, you can even try using the
   change in the AFDC payments variable as an instrumental variable for
   the change in afdcprc.

   Used in Text: not used

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(lowbrth)
