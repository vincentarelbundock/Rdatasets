.. container::

   .. container::

      ========== ===============
      death_prob R Documentation
      ========== ===============

      .. rubric:: 2015 US Period Life Table
         :name: us-period-life-table

      .. rubric:: Description
         :name: description

      Probability of death within 1 year by age and sex in the United
      States in 2015.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         death_prob

      .. rubric:: Format
         :name: format

      An object of class ``"data.frame"``.

      .. rubric:: Details
         :name: details

      -  age. Age strata, with each year a different stratum.

      -  sex. Male or Female.

      -  prob. Probability of death within 1 year given exact age and
         sex.

      .. rubric:: Source
         :name: source

      `Social Security
      Administraton <https://www.ssa.gov/oact/STATS/table4c6.html>`__

      .. rubric:: Examples
         :name: examples

      .. code:: R

         head(death_prob)
