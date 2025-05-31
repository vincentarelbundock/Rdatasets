.. container::

   .. container::

      ======================= ===============
      CA19PancreaticCancer_df R Documentation
      ======================= ===============

      .. rubric:: Diagnosis of Pancreatic Cancer with CA19-9 Biomarker
         :name: diagnosis-of-pancreatic-cancer-with-ca19-9-biomarker

      .. rubric:: Description
         :name: description

      This dataset, CA19PancreaticCancer_df, is a data frame containing
      data from a diagnostic accuracy review on the CA19-9 biomarker
      used for diagnosing pancreatic cancer. The dataset includes the
      number of true positives (TP), false positives (FP), false
      negatives (FN), and true negatives (TN) from various studies.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(CA19PancreaticCancer_df)

      .. rubric:: Format
         :name: format

      A data frame with 22 observations and 5 variables:

      study
         Name or identifier of the study (character).

      TP
         True positives – the number of correctly identified positive
         cases (integer).

      FP
         False positives – the number of cases incorrectly identified as
         positive (integer).

      FN
         False negatives – the number of cases incorrectly identified as
         negative (integer).

      TN
         True negatives – the number of correctly identified negative
         cases (integer).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'CA19PancreaticCancer_df' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the R4HCR package.
