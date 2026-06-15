=========================== ===============
strickland.grape.uniformity R Documentation
=========================== ===============

Uniformity trial of grape
-------------------------

Description
~~~~~~~~~~~

Uniformity trial of grape in Australia

Usage
~~~~~

.. code:: R

   data("strickland.grape.uniformity")

Format
~~~~~~

A data frame with 155 observations on the following 3 variables.

``row``
   row

``col``
   column

``yield``
   yield per vine, pounds

Details
~~~~~~~

Yields of individual grape vines, planted 8 feet apart in rows 10 feet
apart. Grown in Rutherglen, North-East Victoria, Australia, 1930.

Certain sections were omitted because of missing vines.

Source
~~~~~~

A. G. Strickland (1932). A vine uniformity trial. Journal of
Agriculture, Victoria, 30, 584-593.
https://handle.slv.vic.gov.au/10381/386462

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)

   data(strickland.grape.uniformity)
   dat <- strickland.grape.uniformity

     libs(desplot)
     desplot(dat, yield ~ col*row,
             main="strickland.grape.uniformity",
             flip=TRUE, aspect=(31*8)/(5*10) )
     
     # CV 43.4
     sd(dat$yield, na.rm=TRUE)/mean(dat$yield, na.rm=TRUE)
     
     # anova like Strickland, appendix 1
     anova(aov(yield ~ factor(row) + factor(col), data=dat))

     # numbers ending in .5 much more common than .0
     # table(substring(format(na.omit(dat$yield)),4,4))
     #  0   5 
     # 25 100 


   ## End(Not run)
