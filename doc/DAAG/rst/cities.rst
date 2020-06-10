====== ===============
cities R Documentation
====== ===============

Populations of Major Canadian Cities (1992-96)
----------------------------------------------

Description
~~~~~~~~~~~

Population estimates for several Canadian cities.

Usage
~~~~~

::

   cities

Format
~~~~~~

This data frame contains the following columns:

CITY
   a factor, consisting of the city names

REGION
   a factor with 5 levels (ATL=Atlantic, ON=Ontario, QC=Quebec,
   PR=Prairies, WEST=Alberta and British Columbia) representing the
   location of the cities

POP1992
   a numeric vector giving population in 1000's for 1992

POP1993
   a numeric vector giving population in 1000's for 1993

POP1994
   a numeric vector giving population in 1000's for 1994

POP1995
   a numeric vector giving population in 1000's for 1995

POP1996
   a numeric vector giving population in 1000's for 1996

Source
~~~~~~

Statistics Canada

Examples
~~~~~~~~

::

   cities$have <- factor((cities$REGION=="ON")|(cities$REGION=="WEST"))
   plot(POP1996~POP1992, data=cities, col=as.integer(cities$have))
