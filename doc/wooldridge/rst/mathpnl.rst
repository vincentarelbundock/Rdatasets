.. container::

   ======= ===============
   mathpnl R Documentation
   ======= ===============

   .. rubric:: mathpnl
      :name: mathpnl

   .. rubric:: Description
      :name: description

   Wooldridge Source: Leslie Papke, an economics professor at MSU,
   collected these data from Michigan Department of Education web site,
   www.michigan.gov/mde. These are district-level data, which Professor
   Papke kindly provided. She has used building-level data in “The
   Effects of Spending on Test Pass Rates: Evidence from Michigan”
   (2005), Journal of Public Economics 89, 821-839. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('mathpnl')

   .. rubric:: Format
      :name: format

   A data.frame with 3850 observations on 52 variables:

   -  **distid:** district identifier

   -  **intid:** intermediate school district

   -  **lunch:** percent eligible for free lunch

   -  **enrol:** school enrollment

   -  **ptr:** pupil/teacher: 1995-98

   -  **found:** foundation grant, $: 1995-98

   -  **expp:** expenditure per pupil

   -  **revpp:** revenue per pupil

   -  **avgsal:** average teacher salary

   -  **drop:** high school dropout rate, percent

   -  **grad:** high school grad. rate, percent

   -  **math4:** percent satisfactory, 4th grade math

   -  **math7:** percent satisfactory, 7th grade math

   -  **choice:** number choice students

   -  **psa:** # public school academy studs.

   -  **year:** 1992-1998

   -  **staff:** staff per 1000 students

   -  **avgben:** avg teacher fringe benefits

   -  **y92:** =1 if year == 1992

   -  **y93:** =1 if year == 1993

   -  **y94:** =1 if year == 1994

   -  **y95:** =1 if year == 1995

   -  **y96:** =1 if year == 1996

   -  **y97:** =1 if year == 1997

   -  **y98:** =1 if year == 1998

   -  **lexpp:** log(expp)

   -  **lfound:** log(found)

   -  **lexpp_1:** lexpp[\_n-1]

   -  **lfnd_1:** lfnd[\_n-1]

   -  **lenrol:** log(enrol)

   -  **lenrolsq:** lenrol^2

   -  **lunchsq:** lunch^2

   -  **lfndsq:** lfnd^2

   -  **math4_1:** math4[\_n-1]

   -  **cmath4:** math4 - math4_1

   -  **gexpp:** lexpp - lexpp_1

   -  **gexpp_1:** gexpp[\_n-1

   -  **gfound:** lfound - lfnd_1

   -  **gfnd_1:** gfound[\_n-1]

   -  **clunch:** lunch - lunch[\_n-1]

   -  **clnchsq:** lunchsq - lunchsq[\_n-1]

   -  **genrol:** lenrol - lenrol[\_n-1]

   -  **genrolsq:** genrol^2

   -  **expp92:** expp in 1992

   -  **lexpp92:** log(expp92)

   -  **math4_92:** math4 in 1992

   -  **cpi:** consumer price index

   -  **rexpp:** real spending per pupil, 1997$

   -  **lrexpp:** log(rexpp)

   -  **lrexpp_1:** lrexpp[\_n-1]

   -  **grexpp:** lrexpp - lrexpp_1

   -  **grexpp_1:** grexpp[\_n-1]

   .. rubric:: Used in Text
      :name: used-in-text

   pages 479-480, 505-506

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(mathpnl)
