.. container::

   .. container::

      ================== ===============
      ProstateSurgery_df R Documentation
      ================== ===============

      .. rubric:: Prostate Cancer Surgery Study
         :name: prostate-cancer-surgery-study

      .. rubric:: Description
         :name: description

      This dataset, ProstateSurgery_df, is a data frame containing data
      from a study on 97 men with prostate cancer who were scheduled to
      undergo radical prostatectomy. The dataset includes clinical and
      pathological variables associated with prostate cancer.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(ProstateSurgery_df)

      .. rubric:: Format
         :name: format

      A data frame with 97 observations and 9 variables:

      lcavol
         Logarithm of cancer volume (numeric).

      lweight
         Logarithm of prostate weight (numeric).

      age
         Patient's age in years (integer).

      lbph
         Logarithm of the amount of benign prostatic hyperplasia
         (numeric).

      svi
         Seminal vesicle invasion (binary: 0 = No, 1 = Yes; integer).

      lcp
         Logarithm of capsular penetration (numeric).

      gleason
         Gleason score (integer).

      pgg45
         Percentage of Gleason scores 4 or 5 (integer).

      lpsa
         Logarithm of prostate-specific antigen (PSA) level (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'ProstateSurgery_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the faraway package.
