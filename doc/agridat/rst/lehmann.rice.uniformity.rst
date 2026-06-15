======================= ===============
lehmann.rice.uniformity R Documentation
======================= ===============

Uniformity trial of rice in India
---------------------------------

Description
~~~~~~~~~~~

Uniformity trial of rice in India, 3 years on same land.

Usage
~~~~~

.. code:: R

   data("lehmann.rice.uniformity")

Format
~~~~~~

A data frame with 153 observations on the following 5 variables.

``year``
   year

``plot``
   plot (row)

``range``
   range (column)

``yield``
   grain yield (pounds)

``total``
   total crop yield (pounds)

Details
~~~~~~~

A uniformity experiment of paddy rice on the Experimental Farm at Hebbal
(near Bangalore). The plots were the same year-over-year.

The 6th report

P. 2: Plots are 1/10 acre, 50 links wide, 200 links long.

The 7th report

P. 6 table 1 has yield (pounds) of paddy produced on the wet area of the
farm for 1905-196. (No total weight weight is given).

The 9th report

P. 19 has commenets. P. 47 tables 6 & 7 has grain/total yield for Range
B and Range C 1906-1908.

Field width: 3 plots \* 200 links

Field length: 17 plots \* 50 links

Transcription details: Data values typed and checked by K.Wright
2024.12.09.

Source
~~~~~~

Lehmann, A. Ninth Annual Report of the Agricultural Chemist For the Year
1907-08. Department of Agriculture, Mysore State. [2nd-9th] Annual
Report of the Agricultural Chemist.
https://books.google.com/books?id=u_dHAAAAYAAJ

References
~~~~~~~~~~

Theodor Roemer (1920). Der Feldversuch. Page 68, table 12.
https://www.google.com/books/edition/Arbeiten_der_Deutschen_Landwirtschafts_G/7zBSAQAAMAAJ

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
     library(agridat)
     data(lehmann.rice.uniformity)
     dat <- lehmann.rice.uniformity

     libs(desplot)
     dat$year = factor(dat$year)
     desplot(dat, yield ~ range*plot|year,
             aspect=(17*50)/(2*200),
             main="lehmann.rice.uniformity",
             flip=TRUE, tick=TRUE)
     desplot(dat, total ~ range*plot|year,
             aspect=(17*50)/(2*200),
             main="lehmann.rice.uniformity",
             flip=TRUE, tick=TRUE)
     
     # libs(dplyr)
     # group_by(dat, year) 

   ## End(Not run)
