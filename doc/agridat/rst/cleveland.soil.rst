.. container::

   .. container::

      ============== ===============
      cleveland.soil R Documentation
      ============== ===============

      .. rubric:: Soil resistivity in a field
         :name: soil-resistivity-in-a-field

      .. rubric:: Description
         :name: description

      Soil resistivity in a field

      .. rubric:: Format
         :name: format

      A data frame with 8641 observations on the following 5 variables.

      ``northing``
         y ordinate

      ``easting``
         x ordinate

      ``resistivity``
         Soil resistivity, ohms

      ``is.ns``
         Indicator of north/south track

      ``track``
         Track number

      .. rubric:: Details
         :name: details

      Resistivity is related to soil salinity.

      Electronic version of the data was retrieved from
      http://lib.stat.cmu.edu/datasets/Andrews/

      Cleaned version from Luke Tierney
      https://homepage.stat.uiowa.edu/~luke/classes/248/examples/soil

      .. rubric:: Source
         :name: source

      William Cleveland, (1993). Visualizing Data.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(cleveland.soil)
           dat <- cleveland.soil

           # Similar to Cleveland fig 4.64
           ## libs(latticeExtra)
           ## redblue <- colorRampPalette(c("firebrick", "lightgray", "#375997"))
           ## levelplot(resistivity ~ easting + northing, data = dat,
           ##           col.regions=redblue,
           ##           panel=panel.levelplot.points,
           ##           aspect=2.4, xlab= "Easting (km)", ylab= "Northing (km)",
           ##           main="cleveland")
           
           # 2D loess plot. Cleveland fig 4.68
           sg1 <- expand.grid(easting = seq(.15, 1.410, by = .02),
                              northing = seq(.150, 3.645, by = .02))
           lo1 <- loess(resistivity~easting*northing, data=dat, span = 0.1, degree = 2)
           fit1 <- predict(lo1, sg1)
           libs(lattice)
           redblue <- colorRampPalette(c("firebrick", "lightgray", "#375997"))
           levelplot(fit1 ~ sg1$easting * sg1$northing,
                     col.regions=redblue,
                     cuts = 9,
                     aspect=2.4, xlab = "Easting (km)", ylab = "Northing (km)",
                     main="cleveland.soil - 2D smooth of Resistivity")
           
           # 3D loess plot with data overlaid
           libs(rgl)
           bg3d(color = "white")
           clear3d()
           points3d(dat$easting, dat$northing, dat$resistivity / 100,
                    col = rep("gray50", nrow(dat)))
           rgl::surface3d(seq(.15, 1.410, by = .02),
                          seq(.150, 3.645, by = .02),
                          fit1/100, alpha=0.9, col=rep("wheat", length(fit1)),
                          front="fill", back="fill")
           close3d()

         ## End(Not run)
