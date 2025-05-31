.. container::

   .. container::

      ================== ===============
      SkinCancerChemo_df R Documentation
      ================== ===============

      .. rubric:: Simulated Data from Skin Cancer Chemoprevention Trial
         :name: simulated-data-from-skin-cancer-chemoprevention-trial

      .. rubric:: Description
         :name: description

      This dataset, SkinCancerChemo_df, is a data frame containing
      simulated data mimicking the Skin Cancer Chemoprevention Trial as
      used in Chiou et al. (2017). It records tumor recurrence in
      patients who were part of the trial, which includes information on
      patient demographics, prior tumors, and the treatment they
      received. The dataset consists of 894 observations with 7
      variables.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(SkinCancerChemo_df)

      .. rubric:: Format
         :name: format

      A data frame with 894 observations and 7 variables:

      id
         Patient ID (numeric).

      time
         Time to event or censoring (numeric).

      count
         Number of tumor recurrences (numeric).

      age
         Age of the patient at the start of the trial (numeric).

      male
         Gender of the patient (1 = male, 0 = female) (numeric).

      dfmo
         Indicates whether the patient received DFMO treatment (1 = yes,
         0 = no) (numeric).

      priorTumor
         Number of prior tumors before the trial (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'SkinCancerChemo_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the spef package. This simulated dataset is based
      on the study by Chiou et al. (2017): \*Marginal and conditional
      cumulative incidence functions in the presence of dependent
      censoring\*. Biometrics, 73(2), 385–394.
