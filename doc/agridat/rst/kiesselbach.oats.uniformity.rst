.. container::

   .. container::

      =========================== ===============
      kiesselbach.oats.uniformity R Documentation
      =========================== ===============

      .. rubric:: Uniformity trial of oats
         :name: uniformity-trial-of-oats

      .. rubric:: Description
         :name: description

      Uniformity trial of oats at Nebraska in 1916.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("kiesselbach.oats.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 207 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield bu/ac

      .. rubric:: Details
         :name: details

      Experiment conducted in 1916. Crop was Kerson oats. Each plot
      covered 1/30th acre. Oats were drilled in plats 66 inches wide by
      16 rods long. The drill was 66 inches wide. Plats were separated
      by a space of 16 inches between outside drill rows.

      The source document includes three photographs of the field.

      1 acre = 43560 sq feet

      1/30 acre = 1452 sq feet = 16 rods \* 16.5 ft/rod \* 5.5 ft

      Field width: 3 plats \* 16 rods/plat \* 16.5 ft/rod = 792 feet

      Field length: 69 plats \* 5.5 ft + 68 gaps \* 1.33 feet = 469 feet

      .. rubric:: Source
         :name: source

      Kiesselbach, Theodore A. (1917). Studies Concerning the
      Elimination of Experimental Error in Comparative Crop Tests.
      University of Nebraska Agricultural Experiment Station Research
      Bulletin No. 13. Pages 51-72.
      https://archive.org/details/StudiesConcerningTheEliminationOfExperimentalErrorInComparativeCrop
      https://digitalcommons.unl.edu/extensionhist/430/

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
           
           data(kiesselbach.oats.uniformity)
           dat <- kiesselbach.oats.uniformity
           
           range(dat$yield) # 56.7 92.8 match Kiesselbach p 64.

           libs(desplot)
           desplot(dat, yield ~ col*row,
                   tick=TRUE, flip=TRUE, aspect=792/469, # true aspect
                   main="kiesselbach.oats.uniformity")
           

         ## End(Not run)
