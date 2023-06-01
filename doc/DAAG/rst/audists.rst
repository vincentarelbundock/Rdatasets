.. container::

   ======= ===============
   audists R Documentation
   ======= ===============

   .. rubric:: Road distances between 10 Australian cities
      :name: audists

   .. rubric:: Description
      :name: description

   Distances between the Australian cities of Adelaide, Alice, Brisbane,
   Broome, Cairns, Canberra, Darwin, Melbourne, Perth and Sydney

   .. rubric:: Usage
      :name: usage

   ::

      audists

   .. rubric:: Format
      :name: format

   The format is: Class 'dist', i.e., a distance matrix.

   .. rubric:: Source
      :name: source

   Australian road map

   .. rubric:: Examples
      :name: examples

   ::

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
