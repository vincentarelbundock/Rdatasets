.. container::

   .. container::

      ============== ===============
      usMortality_df R Documentation
      ============== ===============

      .. rubric:: US Mortality Rates by Cause and Gender
         :name: us-mortality-rates-by-cause-and-gender

      .. rubric:: Description
         :name: description

      This dataset, usMortality_df, is a data frame containing mortality
      rates across all ages in the USA from 2011-2013, stratified by
      cause of death, sex, and rural/urban status. It includes national
      aggregate rates for 10 causes of death, including Heart disease.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(usMortality_df)

      .. rubric:: Format
         :name: format

      A data frame with 40 observations and 5 variables:

      Status
         Residential status (factor: Rural/Urban)

      Sex
         Gender (factor: Male/Female)

      Cause
         Cause of death (factor with 10 levels)

      Rate
         Mortality rate per 100,000 population (numeric)

      SE
         Standard error of mortality rate (numeric)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'usMortality_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a standard data frame. The original content has not
      been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the lattice package version 0.22-6. Original
      source: Rural Health Reform Policy Research Center (2015).
      "Exploring Rural and Urban Mortality Differences." Bethesda, MD:
      August 2015.
