.. container::

   .. container::

      ============== ===============
      NCAdata_tbl_df R Documentation
      ============== ===============

      .. rubric:: Interim Dane Data with New Criminal Activity (NCA)
         :name: interim-dane-data-with-new-criminal-activity-nca

      .. rubric:: Description
         :name: description

      This dataset contains pre-treatment covariates, a binary treatment
      (Z), an ordinal decision (D), and an outcome variable (Y). It is
      used to study new criminal activity (NCA).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(NCAdata_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 1,891 observations and 19 variables:

      Sex
         Numeric variable representing the individual's sex.

      White
         Numeric variable indicating whether the individual is White.

      SexWhite
         Numeric interaction term between Sex and White.

      Age
         Numeric variable indicating the individual's age.

      PendingChargeAtTimeOfOffense
         Numeric variable indicating if there was a pending charge at
         the time of offense.

      NCorNonViolentMisdemeanorCharge
         Numeric variable indicating a non-violent misdemeanor charge.

      ViolentMisdemeanorCharge
         Numeric variable indicating a violent misdemeanor charge.

      ViolentFelonyCharge
         Numeric variable indicating a violent felony charge.

      NonViolentFelonyCharge
         Numeric variable indicating a non-violent felony charge.

      PriorMisdemeanorConviction
         Numeric variable indicating prior misdemeanor convictions.

      PriorFelonyConviction
         Numeric variable indicating prior felony convictions.

      PriorViolentConviction
         Numeric variable indicating prior violent convictions.

      PriorSentenceToIncarceration
         Numeric variable indicating prior sentences to incarceration.

      PriorFTAInPastTwoYears
         Numeric variable indicating prior failures to appear (FTA) in
         the past two years.

      PriorFTAOlderThanTwoYears
         Numeric variable indicating prior failures to appear (FTA)
         older than two years.

      Staff_ReleaseRecommendation
         Numeric variable indicating the staff release recommendation.

      Z
         Binary treatment variable.

      D
         Ordinal decision variable.

      Y
         Outcome variable measuring new criminal activity (NCA).

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'NCAdata_tbl_df' to avoid
      confusion with other data sets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'tbl_df' indicates that the
      dataset is a tibble in R. The original content has not been
      modified in any way.

      .. rubric:: Source
         :name: source

      Interim Dane data with new criminal activity (NCA) as an outcome.
