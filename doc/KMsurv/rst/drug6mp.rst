.. container::

   ======= ===============
   drug6mp R Documentation
   ======= ===============

   .. rubric:: data from Section 1.2
      :name: drug6mp

   .. rubric:: Description
      :name: description

   The ``drug6mp`` data frame has 21 rows and 5 columns.

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   pair
      pair number

   remstat
      Remission status at randomization (1=partial, 2=complete)

   t1
      Time to relapse for placebo patients, months

   t2
      Time to relapse for 6-MP patients, months

   relapse
      Relapse indicator (0=censored, 1=relapse) for 6-MP patients

   .. rubric:: Source
      :name: source

   Klein and Moeschberger (1997) *Survival Analysis Techniques for
   Censored and truncated data*, Springer. Freireich et al. (1963)
   *Blood* 21: 699-716.

   .. rubric:: Examples
      :name: examples

   ::

      data(drug6mp)
