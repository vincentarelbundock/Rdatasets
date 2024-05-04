.. container::

   .. container::

      ============ ===============
      Harman74.cor R Documentation
      ============ ===============

      .. rubric:: Harman Example 7.4
         :name: harman-example-7.4

      .. rubric:: Description
         :name: description

      A correlation matrix of 24 psychological tests given to 145
      seventh and eight-grade children in a Chicago suburb by Holzinger
      and Swineford.

      .. rubric:: Usage
         :name: usage

      ::

         Harman74.cor

      .. rubric:: Source
         :name: source

      Harman, H. H. (1976) *Modern Factor Analysis*, Third Edition
      Revised, University of Chicago Press, Table 7.4.

      .. rubric:: Examples
         :name: examples

      ::

         require(stats)
         (Harman74.FA <- factanal(factors = 1, covmat = Harman74.cor))
         for(factors in 2:5) print(update(Harman74.FA, factors = factors))
         Harman74.FA <- factanal(factors = 5, covmat = Harman74.cor,
                                 rotation = "promax")
         print(Harman74.FA$loadings, sort = TRUE)
