========================= ===============
lehmann.millet.uniformity R Documentation
========================= ===============

Uniformity trial of millet in India
-----------------------------------

Description
~~~~~~~~~~~

Uniformity trial of millet in India, 3 years on same land.

Usage
~~~~~

.. code:: R

   data("lehmann.millet.uniformity")

Format
~~~~~~

A data frame with 396 observations on the following 5 variables.

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

A uniformity experiment of ragi (millet) on the Experimental Farm at
Hebbal (near Bangalore). The plots were the same year-over-year.

The 6th report

P. 2: The plots are 1/10 acre, each 50 links wide and 200 links long.
Map (only partially scanned in the pdf). "A part of the dry lands
nearest the tank, which is not quite as uniform as the remainder, is
already excluded from the experimental ground proper".

The 7th report

P. 12, pdf p. 233: Table 3 has grain/straw yield for 1905.

The 9th report

P. 1-10 has comments. P. 36-39 have data: Table 1 has grain yield, table
2 total yield of grain and straw. Columns are, left-right, A-F. Rows
are, top-bottom, 1-22.

The season of 1906 was abnormally wet compared with 1905 and 1907. [9th
report]

Field width: 6 plots \* 200 links

Field length: 22 plots \* 50 links

Source
~~~~~~

Lehmann, A. Ninth Annual Report of the Agricultural Chemist For the Year
1907-08. Department of Agriculture, Mysore State. [2nd-9th] Annual
Report of the Agricultural Chemist.
https://books.google.com/books?id=u_dHAAAAYAAJ

References
~~~~~~~~~~

Theodor Roemer (1920). Der Feldversuch. Page 69, table 13.
https://www.google.com/books/edition/Arbeiten_der_Deutschen_Landwirtschafts_G/7zBSAQAAMAAJ

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
     
     library(agridat)
     data(lehmann.millet.uniformity)
     dat <- lehmann.millet.uniformity

     libs(desplot)
     dat$year = factor(dat$year)
     desplot(dat, yield ~ range*plot|year,
             aspect=(22*50)/(6*200),
             main="lehmann.millet.uniformity",
             flip=TRUE, tick=TRUE)
     desplot(dat, total ~ range*plot|year,
             aspect=(22*50)/(6*200),
             main="lehmann.millet.uniformity",
             flip=TRUE, tick=TRUE)
     
     # libs(dplyr)
     # group_by(dat, year) 

   ## End(Not run)
