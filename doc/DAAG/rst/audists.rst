======= ===============
audists R Documentation
======= ===============

Road distances between 10 Australian cities
-------------------------------------------

Description
~~~~~~~~~~~

Distances between the Australian cities of Adelaide, Alice, Brisbane,
Broome, Cairns, Canberra, Darwin, Melbourne, Perth and Sydney

Usage
~~~~~

.. code:: R

   audists

Format
~~~~~~

The format is: Class 'dist', i.e., a distance matrix.

Source
~~~~~~

Australian road map

Examples
~~~~~~~~

.. code:: R

   data(audists)
   ## Not run: 
   audists.cmd <- cmdscale(audists)
   library(lattice)
   xyplot(audists.cmd[,2] ~ audists.cmd[,1], 
          groups=row.names(audists.cmd),
          panel = function(x, y, subscripts, groups)  
                           ltext(x = x, y = y, label = groups[subscripts],
                           cex=1, fontfamily = "HersheySans"))

   ## End(Not run)
