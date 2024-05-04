.. container::

   .. container::

      =========== ===============
      elasticband R Documentation
      =========== ===============

      .. rubric:: Elastic Band Data
         :name: elastic-band-data

      .. rubric:: Description
         :name: description

      The ``elasticband`` data frame has 7 rows and 2 columns giving,
      for each amount by which an elastic band is stretched over the end
      of a ruler, the distance that the band traveled when released.

      .. rubric:: Usage
         :name: usage

      ::

         elasticband

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      stretch
         the amount by which the elastic band was stretched

      distance
         the distance traveled

      .. rubric:: Source
         :name: source

      J. H. Maindonald

      .. rubric:: Examples
         :name: examples

      ::

         print("Example 1.8.1")

         attach(elasticband)     # R now knows where to find stretch and distance
         plot(stretch, distance) # Alternative: plot(distance ~ stretch)
         detach(elasticband)

         print("Lists - Example 12.7")

         elastic.lm <- lm(distance ~ stretch, data=elasticband)
          names(elastic.lm)
          elastic.lm$coefficients
         elastic.lm[["coefficients"]]
         pause()

         elastic.lm[[1]]
         pause()

         elastic.lm[1]
         pause()

         options(digits=3)
         elastic.lm$residuals 
         pause()

         elastic.lm$call
         pause()

          mode(elastic.lm$call)
