.. container::

   ============ ===============
   Harman23.cor R Documentation
   ============ ===============

   .. rubric:: Harman Example 2.3
      :name: Harman23.cor

   .. rubric:: Description
      :name: description

   A correlation matrix of eight physical measurements on 305 girls
   between ages seven and seventeen.

   .. rubric:: Usage
      :name: usage

   ::

      Harman23.cor

   .. rubric:: Source
      :name: source

   Harman, H. H. (1976) *Modern Factor Analysis*, Third Edition Revised,
   University of Chicago Press, Table 2.3.

   .. rubric:: Examples
      :name: examples

   ::

      require(stats)
      (Harman23.FA <- factanal(factors = 1, covmat = Harman23.cor))
      for(factors in 2:4) print(update(Harman23.FA, factors = factors))
