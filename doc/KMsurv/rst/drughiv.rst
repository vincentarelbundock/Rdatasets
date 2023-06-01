.. container::

   ======= ===============
   drughiv R Documentation
   ======= ===============

   .. rubric:: data from Exercise 7.6, p222
      :name: drughiv

   .. rubric:: Description
      :name: description

   The ``drughiv`` data frame has 34 rows and 3 columns.

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   drug
      Drug combination (1=AZT + zalcitabine, 2=AZT + zalcitabine +
      saquinavir)

   time
      Time after drug administration to CD4 count at a specified level,
      days

   delta
      Indicator of CD4 count reaching specified level (1=yes, 0=no)

   .. rubric:: Source
      :name: source

   Klein and Moeschberger (1997) *Survival Analysis Techniques for
   Censored and truncated data*, Springer.

   .. rubric:: Examples
      :name: examples

   ::

      data(drughiv)
