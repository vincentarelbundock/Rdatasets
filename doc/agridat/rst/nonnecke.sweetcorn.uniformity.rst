============================= ===============
nonnecke.sweetcorn.uniformity R Documentation
============================= ===============

Uniformity trial of sweet corn
------------------------------

Description
~~~~~~~~~~~

Uniformity trials of sweet corn in Alberta, 1956.

Usage
~~~~~

.. code:: R

   data("nonnecke.sweetcorn.uniformity")

Format
~~~~~~

A data frame:

``loc``
   location

``row``
   row

``col``
   column

``yield``
   yield of marketable ears, pounds

Details
~~~~~~~

Experiments were conducted at three locations in Southern Alberta at
Lethbridge, Vauxhall, and Cranford in 1956. Plot layout was 32 rows,
each 179 feet long, allowing 18 ten-foot plots per row. Rows were 3 feet
apart, thinned to one foot between plants. A double guard row surrounded
the entire plot. The same two persons were assigned to harvest the corn
from all locations. All 576 plots were harvested in one day. Optimal
plot sizes were found to be 10ft x 6ft or 20ft by 3ft. The R data uses
row/column for plot/row.

Field width: 18 plots \* 10 ft = 180 feet

Field length: 32 rows \* 3 ft = 96 feet

Source
~~~~~~

Ib Libner Nonnecke. 1958. Yield variability of sweet corn and canning
peas as affected by plot size and shape. Thesis at Oregon State College.
https://hdl.handle.net/1957/23367

References
~~~~~~~~~~

I. L. Nonnecke, 1959. The precision of field experiments with vegetable
crops as influenced by plot and block size and shape: I. Sweet corn.
Canadian Journal of Plant Science, 39(4): 443-457. Tables 1-7.
https://archive.org/details/sim_canadian-journal-of-plant-science_1959-10_39_4
https://doi.org/10.4141/cjps59-061

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

     library(agridat)
     
     # Corn 1
     data(nonnecke.sweetcorn.uniformity)
     dat <- nonnecke.sweetcorn.uniformity

     libs(desplot)
     desplot(dat, yield~col*row|loc,
             flip=TRUE, tick=TRUE, aspect=96/180, # true aspect
             main="nonnecke.sweetcorn.uniformity")
       

   ## End(Not run)
