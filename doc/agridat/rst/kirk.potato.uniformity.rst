====================== ===============
kirk.potato.uniformity R Documentation
====================== ===============

Uniformity trial of potato in Saskatchewan
------------------------------------------

Description
~~~~~~~~~~~

Uniformity trial of potato in Saskatchewan

Usage
~~~~~

.. code:: R

   data("kirk.potato.uniformity")

Format
~~~~~~

A data frame with 36 observations on the following 3 variables.

``row``
   row ordinate

``col``
   column ordinate

``yield``
   yield per plot in pounds

Details
~~~~~~~

Early Ohio potatoes. Conducted at University of Saskatchewan. No date
give, but 1928 is likely. The yield for each plot is not given
explicitly, but Kirk published another paper about potato yields a few
years earlier in which the plot yield was given in pounds.

The field was 132 feet wide, 300 feet long. There were 96 rows 132 feet
long. Each row separated by 3 feet. Each row was harvested in 22 foot
long segments, 6 per row. Within each row, individual potato plants were
spaced 2 feet apart.

The field was divided into sections. The data here are for Section A.
Each experimental unit being 12 feet deep by 22 feet wide.

Field width: 6 plots x 22 feet = 132 feet

Field length: 6 plots x 12 feet = 72 feet

Data typed by K.Wright.

Source
~~~~~~

Kirk, L. E. (1929). Field plot technique with potatoes with special
reference to the Latin square. Scientific Agriculture, 9, 719-729. Table
7. https://babel.hathitrust.org/cgi/pt?id=chi.096360757&seq=733

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
     require(agridat)
     data(kirk.potato.uniformity)
     dat <- kirk.potato.uniformity

     require(desplot)
     desplot(dat, yield ~ col*row,
             flip=TRUE, aspect=(6*12)/(6*22),
             main="kirk.potato.uniformity")

   ## End(Not run)
