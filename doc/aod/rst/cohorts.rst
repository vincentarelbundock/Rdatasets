.. container::

   .. container::

      ======= ===============
      cohorts R Documentation
      ======= ===============

      .. rubric:: Age, Period and Cohort Effects for Vital Rates
         :name: age-period-and-cohort-effects-for-vital-rates

      .. rubric:: Description
         :name: description

      Number of prostate cancer deaths and midperiod population for
      nonwhites in the USA by age and period. The cohort index ``k`` is
      related to age and period indices (``i`` and ``j``, respectively)
      by ``k = j + I - i``, where ``I = max(i)`` (Holford, 1983, Table
      2).

      .. rubric:: Usage
         :name: usage

      ::

         data(cohorts)

      .. rubric:: Format
         :name: format

      A data frame with 49 observations on the following 4 variables.

      period
         A factor with levels ``1935-``, ``1940-``, ..., ``1965-``.

      age
         A factor with levels ``50-``, ``55-``, ..., ``80-``.

      y
         Numeric: the number of prostate cancer deaths.

      n
         Numeric: the midperiod population size.

      .. rubric:: References
         :name: references

      Holford, T.R., 1983. *The estimation of age, period and cohort
      effects for vital rates*. Biometrics 39, 311-324.
