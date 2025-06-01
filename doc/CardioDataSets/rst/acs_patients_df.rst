.. container::

   .. container::

      =============== ===============
      acs_patients_df R Documentation
      =============== ===============

      .. rubric:: Acute Coronary Syndrome (ACS) Patient Data
         :name: acute-coronary-syndrome-acs-patient-data

      .. rubric:: Description
         :name: description

      This dataset, acs_patients_df, is a data frame containing
      demographic and clinical data from 857 patients with Acute
      Coronary Syndrome (ACS). It includes 17 variables covering patient
      characteristics, vital signs, laboratory results, and risk
      factors.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(acs_patients_df)

      .. rubric:: Format
         :name: format

      A data frame with 857 observations and 17 variables:

      age
         Patient age in years (integer)

      sex
         Patient sex (character)

      cardiogenicShock
         Presence of cardiogenic shock (character)

      entry
         Method of hospital entry (character)

      Dx
         Diagnosis (character)

      EF
         Ejection fraction percentage (numeric)

      height
         Height in cm (numeric)

      weight
         Weight in kg (numeric)

      BMI
         Body Mass Index in kg/m² (numeric)

      obesity
         Obesity status (character)

      TC
         Total cholesterol in mg/dL (numeric)

      LDLC
         LDL cholesterol in mg/dL (integer)

      HDLC
         HDL cholesterol in mg/dL (integer)

      TG
         Triglycerides in mg/dL (integer)

      DM
         Diabetes mellitus status (character)

      HBP
         High blood pressure status (character)

      smoking
         Smoking status (character)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'acs_patients_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a standard data frame. The original content has not
      been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the moonBook package version 0.3.1
