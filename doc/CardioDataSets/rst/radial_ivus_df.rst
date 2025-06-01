.. container::

   .. container::

      ============== ===============
      radial_ivus_df R Documentation
      ============== ===============

      .. rubric:: Radial Artery IVUS Patient Data
         :name: radial-artery-ivus-patient-data

      .. rubric:: Description
         :name: description

      This dataset, radial_ivus_df, is a data frame containing
      demographic and clinical data from 115 patients who underwent
      intravascular ultrasound (IVUS) examination of the radial artery
      following transradial coronary angiography. It includes 15
      variables covering patient characteristics, laboratory results,
      and IVUS measurements.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(radial_ivus_df)

      .. rubric:: Format
         :name: format

      A data frame with 115 observations and 15 variables:

      male
         Male sex indicator (integer: 0/1)

      age
         Age in years (integer)

      height
         Height in cm (numeric)

      weight
         Weight in kg (numeric)

      HBP
         High blood pressure status (integer: 0/1)

      DM
         Diabetes mellitus status (integer: 0/1)

      smoking
         Smoking status (factor with 3 levels)

      TC
         Total cholesterol in mg/dL (integer)

      TG
         Triglycerides in mg/dL (integer)

      HDL
         HDL cholesterol in mg/dL (integer)

      LDL
         LDL cholesterol in mg/dL (integer)

      hsCRP
         High-sensitivity C-reactive protein in mg/L (numeric)

      NTAV
         Normalized total atheroma volume (numeric)

      PAV
         Percent atheroma volume (numeric)

      sex
         Sex (factor with 2 levels)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'radial_ivus_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a standard data frame. The original content has not
      been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the moonBook package version 0.3.1
