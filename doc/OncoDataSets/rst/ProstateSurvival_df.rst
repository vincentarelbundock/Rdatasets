.. container::

   .. container::

      =================== ===============
      ProstateSurvival_df R Documentation
      =================== ===============

      .. rubric:: Prostate Cancer Survival Data
         :name: prostate-cancer-survival-data

      .. rubric:: Description
         :name: description

      This dataset, ProstateSurvival_df, is a data frame containing
      survival times for two competing causes: time from prostate cancer
      diagnosis to death from prostate cancer, and time from prostate
      cancer diagnosis to death from other causes. The data set also
      contains information on several risk factors. The data in this
      data set are simulated from detailed competing risk survival
      curves and counts of numbers of patients per group presented in
      Lu-Yao et al. (2009).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(ProstateSurvival_df)

      .. rubric:: Format
         :name: format

      A data frame with 14,294 observations and 5 variables:

      grade
         Cancer grade categorized into 2 levels (factor).

      stage
         Cancer stage categorized into 3 levels (factor).

      ageGroup
         Age group categorized into 4 levels (factor).

      survTime
         Survival time in months from prostate cancer diagnosis
         (integer).

      status
         Event status: 1 for death from prostate cancer, 2 for death
         from other causes, 0 for censored (integer).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'ProstateSurvival_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the asaur package. Simulated data based on
      competing risk survival curves and patient counts presented in
      Lu-Yao et al. (2009): \*Outcomes of localized prostate cancer
      following conservative management\*. Journal of the American
      Medical Association, 302, 1202–1209.
