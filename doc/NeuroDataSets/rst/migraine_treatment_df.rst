.. container::

   .. container::

      ===================== ===============
      migraine_treatment_df R Documentation
      ===================== ===============

      .. rubric:: Migraine Headache Treatment
         :name: migraine-headache-treatment

      .. rubric:: Description
         :name: description

      This dataset, migraine_treatment_df, is a data frame containing
      clinical data on 4,152 migraine treatment cases collected by Tammy
      Kostecki-Dillon. The data includes treatment details, headache
      characteristics, and patient demographics.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(migraine_treatment_df)

      .. rubric:: Format
         :name: format

      A data frame with 4,152 observations and 9 variables:

      id
         Integer: Patient identification number

      time
         Integer: Time measurement (likely days or hours)

      dos
         Integer: Treatment dosage

      hatype
         Factor with 3 levels: Headache type classification

      age
         Integer: Patient age in years

      airq
         Numeric: Air quality index measurement

      medication
         Factor with 3 levels: Medication type

      headache
         Factor with 2 levels: Headache presence/severity

      sex
         Factor with 2 levels: Patient sex

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'migraine_treatment_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      NeuroDataSets package. The suffix 'df' indicates that the dataset
      is a data frame. The original content has not been modified.

      .. rubric:: Source
         :name: source

      Data taken from the carData package version 3.0-5. Original
      collection: Kostecki-Dillon, T. (Year not specified) Migraine
      Treatment Study.
