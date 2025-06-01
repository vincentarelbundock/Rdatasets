.. container::

   .. container::

      ====================== ===============
      obsi.potato.uniformity R Documentation
      ====================== ===============

      .. rubric:: Uniformity trial of potato in Africa 2001
         :name: uniformity-trial-of-potato-in-africa-2001

      .. rubric:: Description
         :name: description

      Uniformity trial of potato in Africa in 2001

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("obsi.potato.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 2569 observations on the following 4 variables.

      ``loc``
         location, 2 levels

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, kg/m^2

      .. rubric:: Details
         :name: details

      Data collected from potato uniformity trials at Hollota (L1) and
      Kulumsa (L2). Each field was 0.15 hectares.

      In each field, 75cm between rows and 60cm between plants. The
      basic units harvested were 1.2m x 1.5m. It is not clear which way
      the plots are oriented in the field with respect to the rows and
      columns.

      At location L1, plot (10,7) was 22.5 in the source document, but
      was changed to 2.25 for this electronic data.

      Hollota:

      Field width: 26 \* 1.2 m

      Field length: 63 rows \* 1.5 m

      Note the horizontal banding of 8 or 9 rows at location L1.

      Kulumsa

      Field width: 19 \* 1.2 m

      Field length: 49 \* 1.5 m

      .. rubric:: Source
         :name: source

      Dechassa Obsi. 2008. Application of Spatial Modeling to the Study
      of Soil Fertility Pattern. MS Thesis, Addis Ababa University. Page
      122-125. https://etd.aau.edu.et/handle/123456789/3221

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(obsi.potato.uniformity)
         dat <- obsi.potato.uniformity

           # Mean plot yield according to Obsi p. 54
           # libs(dplyr)
           # dat <- group_by(dat, loc)
           # summarize(dat, yield=mean(yield))
           ##   loc   yield
           ##   <fct> <dbl>
           ## 1 L1     2.54 # Obsi says 2.55
           ## 2 L2     5.31 # Obsi says 5.36

         libs(desplot)
         desplot(dat, yield ~ col*row, subset=loc=="L1",
           main="obsi.potato.uniformity - loc L1",
           flip=TRUE, tick=TRUE)
         desplot(dat, yield ~ col*row, subset=loc=="L2",
           main="obsi.potato.uniformity - loc L2",
           flip=TRUE, tick=TRUE)

         ## End(Not run)
