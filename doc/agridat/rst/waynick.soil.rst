.. container::

   .. container::

      ============ ===============
      waynick.soil R Documentation
      ============ ===============

      .. rubric:: Soil nitrogen and carbon in two fields
         :name: soil-nitrogen-and-carbon-in-two-fields

      .. rubric:: Description
         :name: description

      Soil nitrogen and carbon in two fields

      .. rubric:: Format
         :name: format

      A data frame with 200 observations on the following 6 variables.

      ``field``
         field name, 2 levels

      ``sample``
         sample number

      ``x``
         x ordinate

      ``y``
         y ordinate

      ``nitro``
         nitrogen content, percent

      ``carbon``
         carbon content, percent

      .. rubric:: Details
         :name: details

      Two fields were studied, one at University Farm in Davis, the
      other near Oakley. The Davis field is silty clay loam, the Oakley
      field is blow sand.

      .. rubric:: Source
         :name: source

      Waynick, Dean, and Sharp, Leslie. (1918). Variability in soils and
      its significance to past and future soil investigations, I-II.
      University of California press.
      https://archive.org/details/variabilityinsoi45wayn

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(waynick.soil)
         dat <- waynick.soil

         # Strong relationship between N,C
         libs(lattice)
         xyplot(nitro~carbon|field, data=dat, main="waynick.soil")

         # Spatial plot
         libs(sp, gstat)
         d1 <- subset(dat, field=="Davis")
         d2 <- subset(dat, field=="Oakley")
         coordinates(d1) <- data.frame(x=d1$x, y=d1$y)
         coordinates(d2) <- data.frame(x=d2$x, y=d2$y)
         spplot(d1, zcol = "nitro", cuts=8, cex = 1.6,
                main = "waynick.soil - Davis field - nitrogen",
                col.regions =  bpy.colors(8), key.space = "right")

         # Variogram
         v1 <- gstat::variogram(nitro~1, data=d1)
         plot(v1, main="waynick.soil - Davis field - nitrogen") # Maybe hasn't reached sill


         ## End(Not run)
