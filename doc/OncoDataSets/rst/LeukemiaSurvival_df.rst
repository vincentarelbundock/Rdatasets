.. container::

   .. container::

      =================== ===============
      LeukemiaSurvival_df R Documentation
      =================== ===============

      .. rubric:: Leukemia Remission Survival Times Placebo-Controlled
         RCT
         :name: leukemia-remission-survival-times-placebo-controlled-rct

      .. rubric:: Description
         :name: description

      This dataset, LeukemiaSurvival_df, is a data frame containing
      remission survival times of 42 leukemia patients enrolled in a
      placebo-controlled randomized controlled trial (RCT). The dataset
      includes information on the time to remission, patient status,
      sex, white blood cell count (log-transformed), and treatment
      regimen.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(LeukemiaSurvival_df)

      .. rubric:: Format
         :name: format

      A data frame with 42 observations and 5 variables:

      time
         Time to remission in days (integer).

      status
         Patient status (1 for event, 0 for censored) (integer).

      sex
         Gender of the patient (numeric, 1 for male, 2 for female).

      logWBC
         Log-transformed white blood cell count (numeric).

      rx
         Treatment regimen (numeric, coded treatment type).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'LeukemiaSurvival_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the autoReg package.
