.. container::

   .. container::

      =========== ===============
      discoveries R Documentation
      =========== ===============

      .. rubric:: Yearly Numbers of Important Discoveries
         :name: yearly-numbers-of-important-discoveries

      .. rubric:: Description
         :name: description

      The numbers of “great” inventions and scientific discoveries in
      each year from 1860 to 1959.

      .. rubric:: Usage
         :name: usage

      ::

         discoveries

      .. rubric:: Format
         :name: format

      A time series of 100 values.

      .. rubric:: Source
         :name: source

      The World Almanac and Book of Facts, 1975 Edition, pages 315–318.

      .. rubric:: References
         :name: references

      McNeil, D. R. (1977) *Interactive Data Analysis*. Wiley.

      .. rubric:: Examples
         :name: examples

      ::

         require(graphics)
         plot(discoveries, ylab = "Number of important discoveries",
              las = 1)
         title(main = "discoveries data set")
