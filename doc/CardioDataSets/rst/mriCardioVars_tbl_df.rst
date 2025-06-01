.. container::

   .. container::

      ==================== ===============
      mriCardioVars_tbl_df R Documentation
      ==================== ===============

      .. rubric:: Elderly CV/MRI and Biomarkers
         :name: elderly-cvmri-and-biomarkers

      .. rubric:: Description
         :name: description

      This dataset, mriCardioVars_tbl_df, is a tibble containing MRI and
      clinical data from 735 elderly participants in a U.S.
      observational study of cardiovascular and cerebrovascular disease
      incidence. It includes 30 variables covering demographic,
      clinical, and imaging measures.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(mriCardioVars_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 735 observations and 30 variables:

      ptid
         Patient identification number (numeric)

      mridate
         MRI date (Date)

      age
         Age in years (numeric)

      sex
         Sex (character)

      race
         Race (character)

      weight
         Weight in kg (numeric)

      height
         Height in cm (numeric)

      packyrs
         Smoking pack-years (numeric)

      yrsquit
         Years since quitting smoking (numeric)

      alcoh
         Alcohol consumption (numeric)

      physact
         Physical activity level (numeric)

      chf
         Congestive heart failure status (numeric)

      chd
         Coronary heart disease status (numeric)

      stroke
         Stroke history (numeric)

      diabetes
         Diabetes status (numeric)

      genhlth
         General health status (numeric)

      ldl
         LDL cholesterol in mg/dL (numeric)

      alb
         Albumin level (numeric)

      crt
         Creatinine level (numeric)

      plt
         Platelet count (numeric)

      sbp
         Systolic blood pressure in mmHg (numeric)

      aai
         Ankle-arm index (numeric)

      fev
         Forced expiratory volume (numeric)

      dsst
         Digit Symbol Substitution Test score (numeric)

      atrophy
         Brain atrophy measure (numeric)

      whgrd
         White matter hyperintensity grade (numeric)

      numinf
         Number of brain infarcts (numeric)

      volinf
         Volume of brain infarcts (numeric)

      obstime
         Observation time (numeric)

      death
         Mortality status (numeric)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'mriCardioVars_tbl_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The suffix 'tbl_df' indicates that the
      dataset is a tibble. The original content has not been modified in
      any way.

      .. rubric:: Source
         :name: source

      Data taken from the rigr package version 1.0.7
