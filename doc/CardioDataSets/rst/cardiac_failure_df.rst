.. container::

   .. container::

      ================== ===============
      cardiac_failure_df R Documentation
      ================== ===============

      .. rubric:: Heart Failure Clinical Dataset
         :name: heart-failure-clinical-dataset

      .. rubric:: Description
         :name: description

      This dataset, cardiac_failure_df, is a data frame containing
      clinical data from 299 patients with heart failure. It includes 13
      variables covering demographic information, medical history,
      laboratory results, and mortality outcomes.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(cardiac_failure_df)

      .. rubric:: Format
         :name: format

      A data frame with 299 observations and 13 variables:

      age
         Patient age in years (numeric)

      anaemia
         Presence of anaemia (integer: 0=no, 1=yes)

      creatinine_phosphokinase
         Level of CPK enzyme in mcg/L (integer)

      diabetes
         Presence of diabetes (integer: 0=no, 1=yes)

      ejection_fraction
         Percentage of blood leaving heart (integer)

      high_blood_pressure
         Presence of hypertension (integer: 0=no, 1=yes)

      platelets
         Platelet count in kiloplatelets/mL (numeric)

      serum_creatinine
         Level of serum creatinine in mg/dL (numeric)

      serum_sodium
         Level of serum sodium in mEq/L (integer)

      sex
         Patient sex (integer: 0=female, 1=male)

      smoking
         Smoking status (integer: 0=no, 1=yes)

      time
         Follow-up period in days (integer)

      DEATH_EVENT
         Death during follow-up (integer: 0=no, 1=yes)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'cardiac_failure_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a standard data frame. The original content has not
      been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the SOPC package version 0.1.0
