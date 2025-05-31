.. container::

   .. container::

      =============== ===============
      NVCAdata_tbl_df R Documentation
      =============== ===============

      .. rubric:: Interim Data with New Violent Criminal Activity (NVCA)
         :name: interim-data-with-new-violent-criminal-activity-nvca

      .. rubric:: Description
         :name: description

      This dataset contains information related to new violent criminal
      activity (NVCA) as an outcome. It includes pre-treatment
      covariates, a binary treatment variable (Z), an ordinal decision
      variable (D), and an outcome variable (Y). The dataset provides a
      rich set of variables that can be used to analyze factors
      influencing violent crime recidivism, with a focus on various
      demographic and criminal history attributes.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(NVCAdata_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 1,891 observations and 19 variables:

      Sex
         Sex of the individual (numeric).

      White
         Indicates if the individual is White (numeric).

      SexWhite
         Indicates if the individual is both White and male (numeric).

      Age
         Age of the individual (numeric).

      PendingChargeAtTimeOfOffense
         Pending charge at the time of offense (numeric).

      NCorNonViolentMisdemeanorCharge
         Non-violent misdemeanor charge (numeric).

      ViolentMisdemeanorCharge
         Violent misdemeanor charge (numeric).

      ViolentFelonyCharge
         Violent felony charge (numeric).

      NonViolentFelonyCharge
         Non-violent felony charge (numeric).

      PriorMisdemeanorConviction
         Prior misdemeanor conviction (numeric).

      PriorFelonyConviction
         Prior felony conviction (numeric).

      PriorViolentConviction
         Prior violent conviction (numeric).

      PriorSentenceToIncarceration
         Prior sentence to incarceration (numeric).

      PriorFTAInPastTwoYears
         Prior failure to appear in the past two years (numeric).

      PriorFTAOlderThanTwoYears
         Prior failure to appear older than two years (numeric).

      Staff_ReleaseRecommendation
         Staff release recommendation (numeric).

      Z
         Binary treatment variable (numeric).

      D
         Ordinal decision variable (numeric).

      Y
         Outcome variable indicating new violent criminal activity
         (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'NVCAdata_tbl_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'tbl_df' indicates that the
      dataset is a tibble in R. The original content has not been
      modified in any way.

      .. rubric:: Source
         :name: source

      Interim data on violent criminal activity (NVCA).
