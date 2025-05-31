.. container::

   .. container::

      ===================== ===============
      crimestatewide_tbl_df R Documentation
      ===================== ===============

      .. rubric:: Annual Crime Dataset of US Counties
         :name: annual-crime-dataset-of-us-counties

      .. rubric:: Description
         :name: description

      This dataset contains annual crime-related statistics for US
      counties, including violent crime rates, murder rates, and
      socio-economic indicators such as poverty, education, and
      unemployment. It provides a comprehensive overview of crime and
      its potential correlates across the United States.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(crimestatewide_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 51 observations and 9 variables:

      State
         State name (character).

      violent crime rate
         Violent crime rate per 100,000 people (numeric).

      murder rate
         Murder rate per 100,000 people (numeric).

      poverty
         Poverty rate as a percentage (numeric).

      high school
         Percentage of high school graduates (numeric).

      college
         Percentage of college graduates (numeric).

      single parent
         Percentage of single-parent households (numeric).

      unemployed
         Unemployment rate as a percentage (numeric).

      metropolitan
         Percentage of the population living in metropolitan areas
         (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'crimestatewide_tbl_df' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'tbl_df' indicates that the
      dataset is stored as a tibble, a modern and more readable
      alternative to traditional data frames in R. The original content
      has not been modified in any way.

      .. rubric:: Source
         :name: source

      Annual crime data of US counties.
