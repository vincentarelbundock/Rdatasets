.. container::

   .. container::

      ============================ ===============
      holtsmark.timothy.uniformity R Documentation
      ============================ ===============

      .. rubric:: Uniformity trial of timothy
         :name: uniformity-trial-of-timothy

      .. rubric:: Description
         :name: description

      Uniformity trial of timothy hay circa 1905

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("holtsmark.timothy.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 240 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield per plot, kg

      .. rubric:: Details
         :name: details

      Field width: 40 plots \* 5 m = 200 m.

      Field length: 6 plots \* 5 m = 30 m

      Holtsmark & Larsen used this trial to compare standard deviations
      of different sized plots (combined from smaller plots).

      .. rubric:: Source
         :name: source

      Holtsmark, G and Larsen, BR (1905). Om Muligheder for at
      indskraenke de Fejl, som ved Markforsog betinges af Jordens
      Uensartethed. Tidsskrift for Landbrugets Planteavl. 12, 330-351.
      (In Danish) Data on page 347.
      https://books.google.com/books?id=MdM0AQAAMAAJ&pg=PA330
      https://dca.au.dk/publikationer/historiske/planteavl/

      Uber die Fehler, welche bei Feldversuchen, durch die
      Ungleichartigkeit des Bodens bedingt werden. Die
      Landwirtschaftlichen Versuchs-Stationen, 65, 1–22. (In German)
      https://books.google.com/books?id=eXA2AQAAMAAJ&pg=PA1

      .. rubric:: References
         :name: references

      Theodor Roemer (1920). Der Feldversuch. Page 67, table 11.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(holtsmark.timothy.uniformity)
         dat <- holtsmark.timothy.uniformity

         # Define diagonal 'check' plots like Holtsmark does
         dat <- transform(dat,
                          check = ifelse(floor((row+col)/3)==(row+col)/3, "C", ""))
                          
         libs(desplot)
         desplot(dat, yield ~ col*row,
                 flip=TRUE, text=check, show.key=FALSE,
                 aspect=30/200, # true aspect
                 main="holtsmark.timothy.uniformity")

         # sd(dat$yield) # 2.92 matches Holtsmark p. 348


         ## End(Not run)
