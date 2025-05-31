.. container::

   .. container::

      ===== ===============
      VA_df R Documentation
      ===== ===============

      .. rubric:: Veteran's Administration Lung Cancer Trial
         :name: veterans-administration-lung-cancer-trial

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'VA_df' to avoid confusion
      with other datasets from packages in the R ecosystem and to follow
      the naming conventions of the 'MedDataSets' package. The suffix
      '\_df' indicates that this dataset is a data frame, helping to
      distinguish it from other datasets within the package and from
      those in the broader R ecosystem. The original content of the
      dataset has not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(VA_df)

      .. rubric:: Format
         :name: format

      A data frame with 137 observations and 8 variables:

      stime
         A numeric value representing the survival time (in days).

      status
         A numeric value indicating the status of the patient (1 if the
         patient died, 0 otherwise).

      treat
         A factor indicating the treatment group (e.g., treatment A or
         B).

      age
         A numeric value representing the age of the patient (in years).

      Karn
         A numeric value representing the Karnofsky performance status
         score.

      diag.time
         A numeric value indicating the time since diagnosis (in days).

      cell
         A factor indicating the cell type of the lung cancer (with 4
         possible levels).

      prior
         A factor indicating prior treatment (yes/no).

      .. rubric:: Details
         :name: details

      This dataset contains data from the Veteran's Administration Lung
      Cancer Trial, which includes information on patients diagnosed
      with lung cancer, their treatment, and other relevant variables.

      .. rubric:: Source
         :name: source

      Data collected from the Veteran's Administration Lung Cancer
      Trial.
