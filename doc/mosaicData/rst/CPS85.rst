===== ===============
CPS85 R Documentation
===== ===============

Data from the 1985 Current Population Survey (CPS85)
----------------------------------------------------

Description
~~~~~~~~~~~

The Current Population Survey (CPS) is used to supplement census
information between census years. These data consist of a random sample
of persons from the CPS85, with information on wages and other
characteristics of the workers, including sex, number of years of
education, years of work experience, occupational status, region of
residence and union membership.

Usage
~~~~~

::

   data(CPS85)

Format
~~~~~~

A data frame with 534 observations on the following variables.

-  ``wage`` wage (US dollars per hour)

-  ``educ`` number of years of education

-  ``race`` a factor with levels ``NW`` (nonwhite) or ``W`` (white)

-  ``sex`` a factor with levels ``F`` ``M``

-  ``hispanic`` a factor with levels ``Hisp`` ``NH``

-  ``south`` a factor with levels ``NS`` ``S``

-  ``married`` a factor with levels ``Married`` ``Single``

-  ``exper`` number of years of work experience (inferred from ``age``
   and ``educ``)

-  ``union`` a factor with levels ``Not`` ``Union``

-  ``age`` age in years

-  ``sector`` a factor with levels ``clerical`` ``const`` ``manag``
   ``manuf`` ``other`` ``prof`` ``sales`` ``service``

Details
~~~~~~~

Data are from 1985. The data file is recoded from the original, which
had entirely numerical codes.

Source
~~~~~~

Data are from https://dasl.datadescription.com

References
~~~~~~~~~~

Berndt, ER. *The Practice of Econometrics* 1991. Addison-Wesley.

Examples
~~~~~~~~

::

   data(CPS85)
