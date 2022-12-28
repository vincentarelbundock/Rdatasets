.. container::

   ======== ===============
   sorption R Documentation
   ======== ===============

   .. rubric:: sorption data set
      :name: sorption-data-set

   .. rubric:: Description
      :name: description

   Concentration-time measurements on different varieties of apples
   under methyl bromide injection.

   .. rubric:: Usage
      :name: usage

   ::

      data(sorption)

   .. rubric:: Format
      :name: format

   A data frame with 192 observations on the following 14 variables.

   m5
      a numeric vector

   m10
      a numeric vector

   m30
      a numeric vector

   m60
      a numeric vector

   m90
      a numeric vector

   m120
      a numeric vector

   ct
      concentration-time

   Cultivar
      a factor with levels ``Pacific Rose`` ``BRAEBURN`` ``Fuji``
      ``GRANNY`` ``Gala`` ``ROYAL`` ``Red Delicious`` ``Splendour``

   Dose
      injected dose of methyl bromide

   rep
      replicate number, within Cultivar and year

   year
      a factor with levels ``1988`` ``1989`` ``1998`` ``1999``

   year.rep
      a factor with levels ``1988:1`` ``1988:2`` ``1988:3`` ``1989:1``
      ``1989:2`` ``1998:1`` ``1998:2`` ``1998:3`` ``1999:1`` ``1999:2``

   gp
      a factor with levels ``BRAEBURN1`` ``BRAEBURN2`` ``Fuji1``
      ``Fuji10`` ``Fuji2`` ``Fuji6`` ``Fuji7`` ``Fuji8`` ``Fuji9``
      ``GRANNY1`` ``GRANNY2`` ``Gala4`` ``Gala5`` ``Pacific Rose10``
      ``Pacific Rose6`` ``Pacific Rose7`` ``Pacific Rose8``
      ``Pacific Rose9`` ``ROYAL1`` ``ROYAL2`` ``Red Del10`` ``Red Del9``
      ``Red Delicious1`` ``Red Delicious2`` ``Red Delicious3``
      ``Red Delicious4`` ``Red Delicious5`` ``Red Delicious6``
      ``Red Delicious7`` ``Red Delicious8`` ``Splendour4``
      ``Splendour5``

   inyear
      a factor with levels ``1`` ``2`` ``3`` ``4`` ``5`` ``6``
