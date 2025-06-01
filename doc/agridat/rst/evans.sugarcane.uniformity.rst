.. container::

   .. container::

      ========================== ===============
      evans.sugarcane.uniformity R Documentation
      ========================== ===============

      .. rubric:: Uniformity trial of sugarcane
         :name: uniformity-trial-of-sugarcane

      .. rubric:: Description
         :name: description

      Uniformity trial of sugarcane in Mauritius.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("evans.sugarcane.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 710 observations on the following 3 variables.

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``yield``
         plot yield

      .. rubric:: Details
         :name: details

      A field of ratoon canes was harvested in 20-hole plots.

      Described in a letter to Frank Yates written 21 May 1935.

      Field length: 5 plots x 50 feet (20 stools per plot; 30 inches
      between stools) = 250 feet

      Field width: 142 plots x 5 feet = 710 feet

      This data was made available with special help from the staff at
      Rothamsted Research Library.

      .. rubric:: Source
         :name: source

      Rothamsted Research Library, Box STATS17 WG Cochran, Folder 8.

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           data(evans.sugarcane.uniformity)
           dat <- evans.sugarcane.uniformity
           libs(desplot)
           desplot(dat, yield ~ col*row,
                   flip=TRUE, aspect=(5*50)/(142*5), # true aspect
                   main="evans.sugarcane.uniformity")

           table( substring(dat$yield,3) ) # yields ending in 0,5 are much more common

         ## End(Not run)
