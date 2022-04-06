.. container::

   ======== ===============
   elastic1 R Documentation
   ======== ===============

   .. rubric:: Elastic Band Data Replicated
      :name: elastic-band-data-replicated

   .. rubric:: Description
      :name: description

   The ``elastic1`` data frame has 7 rows and 2 columns giving, for each
   amount by which an elastic band is stretched over the end of a ruler,
   the distance that the band traveled when released.

   .. rubric:: Usage
      :name: usage

   ::

      elastic1

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

      ## Not run: 
      plot(elastic1)

      print("Inline Functions - Example 12.2.2")
      sapply(elastic1, mean)
      pause()

      sapply(elastic1, function(x)mean(x))
      pause()

      sapply(elastic1, function(x)sum(log(x)))
      pause()

      print("Data Output - Example 12.3.2")
      write.table(elastic1, file="bandsframe.txt")

      ## End(Not run)
