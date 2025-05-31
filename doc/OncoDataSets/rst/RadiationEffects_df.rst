.. container::

   .. container::

      =================== ===============
      RadiationEffects_df R Documentation
      =================== ===============

      .. rubric:: Radiation Dose Effects on Chromosomal Abnormality
         :name: radiation-dose-effects-on-chromosomal-abnormality

      .. rubric:: Description
         :name: description

      This dataset, RadiationEffects_df, is a data frame containing data
      from an experiment conducted to examine the effects of gamma
      radiation on the number of chromosomal abnormalities observed. The
      data explores the relationships between radiation dose, dose rate,
      and chromosomal changes.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(RadiationEffects_df)

      .. rubric:: Format
         :name: format

      A data frame with 27 observations and 4 variables:

      cells
         Number of cells observed (integer).

      ca
         Number of chromosomal abnormalities (integer).

      doseamt
         Amount of gamma radiation dose (numeric).

      doserate
         Rate of gamma radiation dose (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'RadiationEffects_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the faraway package. Based on the study by Purott
      R. and Reeder E. (1976): \*The effect of changes in dose rate on
      the yield of chromosome aberrations in human lymphocytes exposed
      to gamma radiation\*. Mutation Research, 35, 437–444.
