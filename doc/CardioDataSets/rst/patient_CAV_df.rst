.. container::

   .. container::

      ============== ===============
      patient_CAV_df R Documentation
      ============== ===============

      .. rubric:: CAV in Heart Transplant Patients
         :name: cav-in-heart-transplant-patients

      .. rubric:: Description
         :name: description

      This dataset, patient_CAV_df, is a data frame containing
      longitudinal follow-up data from heart transplant recipients at
      Papworth Hospital, UK. It tracks 2,803 angiographic examinations
      for the onset of cardiac allograft vasculopathy and mortality.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(patient_CAV_df)

      .. rubric:: Format
         :name: format

      A data frame with 2,803 observations and 5 variables:

      PTNUM
         Patient identification number (integer)

      years
         Time since transplant in years (numeric)

      state
         Disease state (numeric)

      dage
         Donor age in years (integer)

      pdiag
         Primary diagnosis code (numeric)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'patient_CAV_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a standard data frame. The original content has not
      been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the flexmsm package version 0.1.2. Original data:
      Papworth Hospital, UK. Subset of cav data from msm package.
