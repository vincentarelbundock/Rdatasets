.. container::

   .. container::

      ====================== ===============
      USRegionalMortality_df R Documentation
      ====================== ===============

      .. rubric:: US Region Mortality Rates by Cause (Cancer) and Gender
         :name: us-region-mortality-rates-by-cause-cancer-and-gender

      .. rubric:: Description
         :name: description

      This dataset, USRegionalMortality_df, is a data frame containing
      mortality rates across all ages in the USA, recorded region-wise
      by cause of death, sex, and rural/urban status for the years
      2011–2013. It includes region-wide rates for each administrative
      region under the Department of Health and Human Services (HHS).
      The dataset consists of 400 observations with 6 variables.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(USRegionalMortality_df)

      .. rubric:: Format
         :name: format

      A data frame with 400 observations and 6 variables:

      Region
         Administrative region under the Department of Health and Human
         Services (HHS) (factor with 10 levels).

      Status
         Rural or urban status (factor with 2 levels).

      Sex
         Gender of the individual (factor with 2 levels).

      Cause
         Cause of death (factor with 10 levels).

      Rate
         Mortality rate (numeric).

      SE
         Standard error of the mortality rate (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'USRegionalMortality_df' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the lattice package. This dataset is based on the
      study by the Rural Health Reform Policy Research Center:
      \*Exploring Rural and Urban Mortality Differences\*, August 2015,
      Bethesda, MD. Available at
      https://ruralhealth.und.edu/projects/health-reform-policy-research-center/rural-urban-mortality.
