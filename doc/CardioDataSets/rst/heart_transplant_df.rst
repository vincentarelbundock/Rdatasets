.. container::

   .. container::

      =================== ===============
      heart_transplant_df R Documentation
      =================== ===============

      .. rubric:: Stanford Heart Transplant Data
         :name: stanford-heart-transplant-data

      .. rubric:: Description
         :name: description

      This dataset, heart_transplant_df, is a data frame containing
      survival data from the Stanford heart transplant program. It
      includes information on 172 patients with follow-up times,
      transplant status, and clinical covariates.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(heart_transplant_df)

      .. rubric:: Format
         :name: format

      A data frame with 172 observations and 8 variables:

      start
         Start time of interval (numeric)

      stop
         End time of interval (numeric)

      event
         Survival status (numeric: 1=event, 0=censored)

      age
         Patient age at enrollment (numeric)

      year
         Year of enrollment (numeric)

      surgery
         Prior bypass surgery (numeric)

      transplant
         Transplant status (factor: 0=no, 1=yes)

      id
         Patient identification number (numeric)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'heart_transplant_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a standard data frame. The original content has not
      been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the lrstat package version 0.2.13. Original
      source: Stanford Heart Transplant Study data from the survival
      package.
