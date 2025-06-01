.. container::

   .. container::

      =================== ===============
      heartdisease_tbl_df R Documentation
      =================== ===============

      .. rubric:: Heart Disease Patients Clinical Data
         :name: heart-disease-patients-clinical-data

      .. rubric:: Description
         :name: description

      This dataset, heartdisease_tbl_df, is a tibble containing
      information on individuals evaluated for heart disease. It is a
      cleaned version of the original "Heart Disease" dataset from the
      UCI Machine Learning Repository, and includes 303 observations on
      9 variables.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(heartdisease_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 303 observations and 9 variables:

      Age
         Age of the individual (numeric).

      Sex
         Sex of the individual (factor with 2 levels: typically "Male"
         and "Female").

      ChestPain
         Type of chest pain experienced (factor with 4 levels).

      BP
         Resting blood pressure (numeric).

      Cholesterol
         Serum cholesterol in mg/dl (numeric).

      BloodSugar
         Indicates if fasting blood sugar > 120 mg/dl (logical).

      MaximumHR
         Maximum heart rate achieved (numeric).

      ExerciseInducedAngina
         Exercise-induced angina (factor with 2 levels).

      HeartDisease
         Presence or absence of heart disease (factor with 2 levels).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'heartdisease_tbl_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The suffix 'tbl_df' indicates that the
      dataset is a tibble. The original content has not been modified in
      any way.

      .. rubric:: Source
         :name: source

      Data taken from the cheese package version 0.1.2. Original source:
      UCI Machine Learning Repository. Heart Disease Data Set.
      https://archive.ics.uci.edu/ml/datasets/Heart+Disease
