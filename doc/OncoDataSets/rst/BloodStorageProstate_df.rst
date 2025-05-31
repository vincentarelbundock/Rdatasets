.. container::

   .. container::

      ======================= ===============
      BloodStorageProstate_df R Documentation
      ======================= ===============

      .. rubric:: Effects of Blood Storage on Prostate Cancer Study
         :name: effects-of-blood-storage-on-prostate-cancer-study

      .. rubric:: Description
         :name: description

      This dataset, BloodStorageProstate_df, is a data frame containing
      data on 316 men who underwent radical prostatectomy and received a
      transfusion during or within 30 days of the surgery. The dataset
      includes demographic, baseline, and prognostic factors, as well as
      data on the time to biochemical recurrence of prostate cancer, as
      indicated by prostate serum antigen (PSA) levels. The main
      exposure of interest was the red blood cell (RBC) storage duration
      group, and the outcome of interest was time to PSA cancer
      recurrence.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(BloodStorageProstate_df)

      .. rubric:: Format
         :name: format

      A data frame with 316 observations and 20 variables:

      RBC.Age.Group
         Age group of red blood cells (numeric).

      Median.RBC.Age
         Median age of red blood cells (numeric).

      Age
         Patient's age (numeric).

      AA
         African American status (numeric).

      FamHx
         Family history of prostate cancer (numeric).

      PVol
         Prostate volume (numeric).

      TVol
         Tumor volume (numeric).

      T.Stage
         Tumor stage (numeric).

      bGS
         Biopsy grade score (numeric).

      BN+
         Bone metastasis status (numeric).

      OrganConfined
         Organ confinement status (numeric).

      PreopPSA
         Preoperative prostate serum antigen level (numeric).

      PreopTherapy
         Preoperative therapy received (numeric).

      Units
         Number of blood transfusion units (numeric).

      sGS
         Surgical Gleason score (numeric).

      AnyAdjTherapy
         Any adjuvant therapy received (numeric).

      AdjRadTherapy
         Adjuvant radiation therapy received (numeric).

      Recurrence
         Cancer recurrence status (numeric).

      Censor
         Censoring status (numeric).

      TimeToRecurrence
         Time to biochemical recurrence in months (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'BloodStorageProstate_df' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the medicaldata package. Cata et al. (2011).
      \*Blood Storage Duration and Biochemical Recurrence of Cancer
      after Radical Prostatectomy\*. Mayo Clinic Proceedings, 86(2),
      120–127.
