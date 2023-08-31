.. container::

   ====== ===============
   rental R Documentation
   ====== ===============

   .. rubric:: rental
      :name: rental

   .. rubric:: Description
      :name: description

   Wooldridge Source: David Harvey, a former MSU undergraduate,
   collected the data for 64 “college towns” from the 1980 and 1990
   United States censuses. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('rental')

   .. rubric:: Format
      :name: format

   A data.frame with 128 observations on 23 variables:

   -  **city:** city label, 1 to 64

   -  **year:** 80 or 90

   -  **pop:** city population

   -  **enroll:** # college students enrolled

   -  **rent:** average rent

   -  **rnthsg:** renter occupied units

   -  **tothsg:** occupied housing units

   -  **avginc:** per capita income

   -  **lenroll:** log(enroll)

   -  **lpop:** log(pop)

   -  **lrent:** log(rent)

   -  **ltothsg:** log(tothsg)

   -  **lrnthsg:** log(rnthsg)

   -  **lavginc:** log(avginc)

   -  **clenroll:** change in lrent from 80 to 90

   -  **clpop:** change in lpop

   -  **clrent:** change in lrent

   -  **cltothsg:** change in ltothsg

   -  **clrnthsg:** change in lrnthsg

   -  **clavginc:** change in lavginc

   -  **pctstu:** percent of population students

   -  **cpctstu:** change in pctstu

   -  **y90:** =1 if year == 90

   .. rubric:: Notes
      :name: notes

   These data can be used in a somewhat crude simultaneous equations
   analysis, either focusing on one year or pooling the two years. (In
   the latter case, in an advanced class, you might have students
   compute the standard errors robust to serial correlation across the
   two time periods.) The demand equation would have ltothsg as a
   function of lrent, lavginc, and lpop. The supply equation would have
   ltothsg as a function of lrent, pctst, and lpop. Thus, in estimating
   the demand function, pctstu is used as an IV for lrent. Clearly one
   can quibble with excluding pctstu from the demand equation, but the
   estimated demand function gives a negative price effect. Getting
   information for 2000, and adding many more college towns, would make
   for a much better analysis. Information on number of spaces in
   on-campus dormitories would be a big improvement, too.

   Used in Text: pages 160, 477, 503-504

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(rental)
