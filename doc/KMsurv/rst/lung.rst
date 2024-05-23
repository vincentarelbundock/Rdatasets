.. container::

   .. container::

      ==== ===============
      lung R Documentation
      ==== ===============

      .. rubric:: data from Exercise 4.4, p120
         :name: data-from-exercise-4.4-p120

      .. rubric:: Description
         :name: description

      The ``lung`` data frame has 25 rows and 4 columns.

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      time
         Days to death

      death
         Death indicator (1=dead), complete follow-up on all patients

      time2
         Days to 3/31/80 or death (interim analysis)

      death2
         Death indicator as of 3/31/80 (1=dead, 0=alive)

      .. rubric:: Source
         :name: source

      Klein and Moeschberger (1997) *Survival Analysis Techniques for
      Censored and truncated data*, Springer.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(lung)
