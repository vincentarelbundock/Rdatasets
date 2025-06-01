.. container::

   .. container::

      ====================== ===============
      paez.coffee.uniformity R Documentation
      ====================== ===============

      .. rubric:: Uniformity trial of coffee
         :name: uniformity-trial-of-coffee

      .. rubric:: Description
         :name: description

      Uniformity trial of coffee in Caldas Columbia

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("paez.coffee.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 4190 observations on the following 5 variables.

      ``plot``
         plot number

      ``row``
         row

      ``col``
         column

      ``year``
         year

      ``yield``
         yield per tree, kilograms

      .. rubric:: Details
         :name: details

      The field map on Paez page 56, has plots 1 to 838. The data tables
      on page 79-97 have data for plots 1 to 900.

      Note: The 'row' ordinate in this data would imply that the rows
      and columns are perpendicular. But the field map on page 56 of
      Paez shows that the rows are not at a 90-degree angle compared to
      the columns, but only at a 60-degree angle compared to the
      columns. In other words, the columns are vertical, and the rows
      are sloping up and right at about 30 degrees.

      Paez looks at blocks that are 1,2,...36 trees in size. Page 30
      shows annual CV.

      .. rubric:: Source
         :name: source

      Gilberto Paez Bogarin (1962). Estudios sobre tamano y forma de
      parcela para ensayos en cafe. Instituto Interamericano de Ciencias
      Agricolas de la O.E.A. Centro Tropical de Investigacion y
      Ensenanza para Graduados. Costa Rica.
      https://hdl.handle.net/11554/1892

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(paez.coffee.uniformity)
         dat <- paez.coffee.uniformity

         libs(reshape2, corrgram)
           datt <- acast(dat, plot ~ year)
           corrgram(datt, lower.panel=panel.pts,
                    main="paez.coffee.uniformity")


         # Not quite right. The rows are not actually horizontal.  See notes above.
         libs(desplot)
         desplot(dat, yield ~ col*row,subset=year=="Y1",
                 tick=TRUE, aspect=1,
                 main="paez.coffee.uniformity - Y1")
         desplot(dat, yield ~ col*row,subset=year=="Y2",
                 tick=TRUE, aspect=1,
                 main="paez.coffee.uniformity - Y2")
         desplot(dat, yield ~ col*row,subset=year=="Y3",
                 tick=TRUE, aspect=1,
                 main="paez.coffee.uniformity - Y3")
         desplot(dat, yield ~ col*row,subset=year=="Y4",
                 tick=TRUE, aspect=1,
                 main="paez.coffee.uniformity - Y4")
         desplot(dat, yield ~ col*row,subset=year=="Y5",
                 tick=TRUE, aspect=1,
                 main="paez.coffee.uniformity - Y5")


         ## End(Not run)
