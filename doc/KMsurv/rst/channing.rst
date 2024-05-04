.. container::

   .. container::

      ======== ===============
      channing R Documentation
      ======== ===============

      .. rubric:: data from Section 1.16
         :name: data-from-section-1.16

      .. rubric:: Description
         :name: description

      The ``channing`` data frame has 462 rows and 6 columns.

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      obs
         Observation number

      death
         Death status (1=dead, 0=alive)

      ageentry
         Age of entry into retirement home, months

      age
         Age of death or left retirement home, months

      time
         Difference between the above two ages, months

      gender
         Gender (1=male, 2=female)

      .. rubric:: Source
         :name: source

      Klein and Moeschberger (1997) *Survival Analysis Techniques for
      Censored and truncated data*, Springer. Hyde Biometrika (1977),
      225-230.

      .. rubric:: Examples
         :name: examples

      ::

         data(channing)
