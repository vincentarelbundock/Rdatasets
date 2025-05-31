.. container::

   .. container::

      ======== ===============
      Aids2_df R Documentation
      ======== ===============

      .. rubric:: Australian AIDS Survival Data
         :name: australian-aids-survival-data

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'Aids2_df' to avoid confusion
      with other datasets from packages in the R ecosystem and to follow
      the naming conventions of the 'MedDataSets' package. The suffix
      '\_df' indicates that this dataset is a data frame, helping to
      distinguish it from other datasets within the package and from
      those in the broader R ecosystem. The original content of the
      dataset has not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Aids2_df)

      .. rubric:: Format
         :name: format

      A data frame with 2843 observations and 7 variables:

      state
         A factor indicating the state of residence of the patient (4
         levels).

      sex
         A factor indicating the sex of the patient (2 levels).

      diag
         An integer indicating the year of diagnosis.

      death
         An integer indicating the year of death.

      status
         A factor indicating the status of the patient (2 levels: alive
         or deceased).

      T.categ
         A factor indicating the T-cell category of the patient (8
         levels).

      age
         An integer indicating the age of the patient at diagnosis.

      .. rubric:: Details
         :name: details

      This dataset provides information on the survival rates and
      characteristics of AIDS patients in Australia, including their
      demographic details and clinical data.

      .. rubric:: Source
         :name: source

      Australian Department of Health.
