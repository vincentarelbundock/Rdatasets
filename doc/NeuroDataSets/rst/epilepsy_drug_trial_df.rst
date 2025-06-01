.. container::

   .. container::

      ====================== ===============
      epilepsy_drug_trial_df R Documentation
      ====================== ===============

      .. rubric:: Epileptic Seizures Clinical Drug Trial
         :name: epileptic-seizures-clinical-drug-trial

      .. rubric:: Description
         :name: description

      This dataset, epilepsy_drug_trial_df, is a data frame containing
      seizure counts from a clinical trial of anti-epileptic medication.
      The data includes seizure frequency measurements along with
      treatment indicators and patient covariates for 295 observations.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(epilepsy_drug_trial_df)

      .. rubric:: Format
         :name: format

      A data frame with 295 observations and 6 variables:

      seizures
         Numeric: Count of epileptic seizures

      id
         Integer: Patient identification number

      treat
         Numeric: Treatment indicator

      expind
         Numeric: Exposure period indicator

      timeadj
         Numeric: Adjusted time period

      age
         Numeric: Patient age in years

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'epilepsy_drug_trial_df' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      NeuroDataSets package. The suffix 'df' indicates that the dataset
      is a data frame. The original content has not been modified.

      .. rubric:: Source
         :name: source

      Data taken from the faraway package version 1.0.9
