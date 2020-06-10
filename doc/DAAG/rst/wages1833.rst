========= ===============
wages1833 R Documentation
========= ===============

Wages of Lancashire Cotton Factory Workers in 1833
--------------------------------------------------

Description
~~~~~~~~~~~

The ``wages1833`` data frame gives the wages of Lancashire cotton
factory workers in 1833.

Usage
~~~~~

::

   wages1833

Format
~~~~~~

This data frame contains the following columns:

age
   age in years

mnum
   number of male workers

mwage
   average wage of male workers

fnum
   number of female workers

fwage
   average wage of female workers

Source
~~~~~~

Boot, H.M. 1995. How Skilled Were the Lancashire Cotton Factory Workers
in 1833? Economic History Review 48: 283-303.

Examples
~~~~~~~~

::

   attach(wages1833)
   plot(mwage~age,ylim=range(c(mwage,fwage[fwage>0])))
   points(fwage[fwage>0]~age[fwage>0],pch=15,col="red")
   lines(lowess(age,mwage))
   lines(lowess(age[fwage>0],fwage[fwage>0]),col="red")
