.. container::

   .. container::

      ================== ===============
      holland.arthropods R Documentation
      ================== ===============

      .. rubric:: Counts of arthropods in a grid-sampled wheat field
         :name: counts-of-arthropods-in-a-grid-sampled-wheat-field

      .. rubric:: Description
         :name: description

      Counts of arthropods in a grid-sampled wheat field

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("holland.arthropods")

      .. rubric:: Format
         :name: format

      A data frame with 63 observations on the following 8 variables.

      ``row``
         row

      ``col``
         column

      ``n.brevicollis``
         species counts

      ``linyphiidae``
         species counts

      ``collembola``
         species counts

      ``carabidae``
         species counts

      ``lycosidae``
         species counts

      ``weedcover``
         percent weed cover

      .. rubric:: Details
         :name: details

      Arthropods were sampled at 30m x 30m grid in a wheat field near
      Wimborne, Dorest, UK on 6 dates in Jun/Jul 1996. Arthropod counts
      were aggregated across the 6 dates.

      Holland et al. used SADIE (Spatial Analysis by Distance Indices)
      to look for spatial patterns. Significant patterns were found for
      N. brevicollis, Carabidae, Lycosidae. The Lycosidae counts were
      also significantly associated with weed cover.

      Used with permission of John Holland.

      .. rubric:: Source
         :name: source

      Holland J. M., Perry J. N., Winder, L. (1999). The within-field
      spatial and temporal distribution of arthropods within winter
      wheat. Bulletin of Entomological Research, 89: 499-513. Figure 3
      (large grid in 1996). https://doi.org/10.1017/S0007485399000656

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
         library(agridat)
         data(holland.arthropods)
         dat <- holland.arthropods


           # use log count to make it possible to have same scale for insects
           libs(reshape2, lattice)
           grays <- colorRampPalette(c("#d9d9d9","#252525"))
           dat2 <- melt(dat, id.var=c('row','col'))
           contourplot(log(value) ~ col*row|variable, dat2,
                       col.regions=grays(7), region=TRUE,
                       main="holland.arthropods - log counts in winter wheat")


         if(0){
           # individual species
           libs(lattice)
           grays <- colorRampPalette(c("#d9d9d9","#252525"))
           contourplot(linyphiidae ~ col*row, dat, at=c(0,40,80,120,160,200), region=TRUE,
                       col.regions=grays(5),
                       main="holland.arthropods - linyphiidae counts in winter wheat")
           contourplot(n.brevicollis ~ col*row, dat, region=TRUE)
           contourplot(linyphiidae~ col*row, dat, region=TRUE)
           contourplot(collembola ~ col*row, dat, region=TRUE)
           contourplot(carabidae ~ col*row, dat, region=TRUE)
           contourplot(lycosidae ~ col*row, dat, region=TRUE)
           contourplot(weedcover ~ col*row, dat, region=TRUE)
         }


         ## End(Not run)
