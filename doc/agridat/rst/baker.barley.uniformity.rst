======================= ===============
baker.barley.uniformity R Documentation
======================= ===============

Uniformity trials of barley, 10 years on same ground
----------------------------------------------------

Description
~~~~~~~~~~~

Uniformity trials of barley at Davis, California, 1925-1935, 10 years on
same ground.

Format
~~~~~~

A data frame with 570 observations on the following 4 variables.

``row``
   row

``col``
   column

``year``
   year

``yield``
   yield, pounds/acre

Details
~~~~~~~

Ten years of uniformity trials were sown on the same ground. Baker
(1952) shows a map of the field, in which gravel subsoil extended from
the upper right corner diagonally lower-center. This part of the field
had lower yields on the 10-year average map.

Plot 41 in 1928 is missing.

Field width: 19 plots = 827 ft

Field length: 3 plots \* 161 ft + 2 alleys \* 15 feet = 513 ft

Source
~~~~~~

Baker, GA and Huberty, MR and Veihmeyer, FJ. (1952) A uniformity trial
on unirrigated barley of ten years' duration. *Agronomy Journal*, 44,
267-270. https://doi.org/10.2134/agronj1952.00021962004400050011x

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)

   data(baker.barley.uniformity)
   dat <- baker.barley.uniformity

   libs(desplot)
   desplot(dat, yield~col*row|year,
           aspect = 513/827, # true aspect
           main="baker.barley.uniformity - heatmaps by year")

   # Ten-year average
   dat2 <- aggregate(yield ~ row*col, data=dat, FUN=mean, na.rm=TRUE)

   desplot(dat2, yield~col*row,
           aspect = 513/827, # true aspect
           main="baker.barley.uniformity - heatmap of 10-year average")
   # Note low yield in upper right, slanting to left a bit due to sandy soil
   # as shown in Baker figure 1.


   # Baker fig 2, stdev vs mean
   dat3 <- aggregate(yield ~ row*col, data=dat, FUN=sd, na.rm=TRUE)
   plot(dat2$yield, dat3$yield, xlab="Mean yield", ylab="Std Dev yield",
        main="baker.barley.uniformity")

   # Baker table 4, correlation of plots across years
   # libs(reshape2)
   # mat <- acast(dat, row+col~year, value.var="yield")
   # round(cor(mat, use='pair'),2)
   # lattice::splom(mat)

   ## End(Not run)
