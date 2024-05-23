.. container::

   .. container::

      ==== ===============
      hodg R Documentation
      ==== ===============

      .. rubric:: data from Section 1.10
         :name: data-from-section-1.10

      .. rubric:: Description
         :name: description

      The ``hodg`` data frame has 43 rows and 6 columns.

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      gtype
         Graft type (1=allogenic, 2=autologous)

      dtype
         Disease type (1=Non Hodgkin lymphoma, 2=Hodgkins disease)

      time
         Time to death or relapse, days

      delta
         Death/relapse indicator (0=alive, 1=dead)

      score
         Karnofsky score

      wtime
         Waiting time to transplant in months

      .. rubric:: Source
         :name: source

      Klein and Moeschberger (1997) *Survival Analysis Techniques for
      Censored and truncated data*, Springer. Avalos et al. Bone Marrow
      Transplantation 13(1993):133-138.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(hodg)
