.. container::

   .. container::

      ==================== ===============
      WBreastCancer_tbl_df R Documentation
      ==================== ===============

      .. rubric:: Women with Breast Cancer Study
         :name: women-with-breast-cancer-study

      .. rubric:: Description
         :name: description

      This dataset, WBreastCancer_tbl_df, is a tibble containing data
      from a study among women with breast cancer. The dataset includes
      clinical and demographic variables for 1207 patients, providing
      valuable insights for breast cancer research and analysis.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(WBreastCancer_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 1207 observations and 9 variables:

      id
         Unique identifier for each patient (numeric).

      time
         Time to the event or censoring (numeric).

      status
         Event status: 1 if the event occurred, 0 if censored (numeric).

      er
         Estrogen receptor status (numeric).

      age
         Age of the patient at the time of diagnosis (numeric).

      histgrad
         Histological grade of the tumor (numeric).

      ln_yesno
         Presence of lymph nodes: 1 if positive, 0 if negative
         (numeric).

      pathsd
         Pathological stage of the disease (numeric).

      pr
         Progesterone receptor status (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'WBreastCancer_tbl_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The original content has not been modified in any
      way.

      .. rubric:: Source
         :name: source

      Data taken from the psfmi package.
