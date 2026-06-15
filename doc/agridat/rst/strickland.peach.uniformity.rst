=========================== ===============
strickland.peach.uniformity R Documentation
=========================== ===============

Uniformity trial of peach
-------------------------

Description
~~~~~~~~~~~

Uniformity trial of peach trees in Australia.

Usage
~~~~~

.. code:: R

   data("strickland.peach.uniformity")

Format
~~~~~~

A data frame with 144 observations on the following 3 variables.

``row``
   row

``col``
   column

``yield``
   yield, pounds per tree

Details
~~~~~~~

Yields are the weight of peaches per individual tree in pounds.

Source
~~~~~~

A. G. Strickland (1935). Error in horticultural experiments. Journal of
Agriculture, Victoria, 33, 408-416.
https://handle.slv.vic.gov.au/10381/386642

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)

     data(strickland.peach.uniformity)
     dat <- strickland.peach.uniformity

     mean(dat$yield) # 131.3, Strickland has 131.3
     sd(dat$yield)/mean(dat$yield) # 31.1, Strickland has 34.4

     libs(desplot)
     desplot(dat, yield ~ col*row,
             main="strickland.peach.uniformity",
             flip=TRUE, aspect=1)

   ## End(Not run)
