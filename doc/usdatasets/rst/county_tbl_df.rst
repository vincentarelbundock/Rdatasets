.. container::

   .. container::

      ============= ===============
      county_tbl_df R Documentation
      ============= ===============

      .. rubric:: United States Counties
         :name: united-states-counties

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'county_tbl_df' to avoid
      confusion with other packages in the R ecosystem from which
      datasets have been sourced. This naming convention helps
      distinguish this dataset as part of the 'usdatasets' package and
      assists users in identifying its specific characteristics. The
      suffix 'tbl_df' identifies the dataset as a tibble. The original
      content of the dataset has not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(county_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 3,142 observations and 15 variables:

      name
         Name of the county.

      state
         State in which the county is located (factor with 51 levels).

      pop2000
         Population of the county in the year 2000.

      pop2010
         Population of the county in the year 2010.

      pop2017
         Population of the county in the year 2017.

      pop_change
         Change in population over the years.

      poverty
         Poverty rate in the county.

      homeownership
         Rate of homeownership in the county.

      multi_unit
         Percentage of multi-unit housing.

      unemployment_rate
         Unemployment rate in the county.

      metro
         Indicates if the county is in a metropolitan area (factor with
         2 levels).

      median_edu
         Median education level in the county (factor with 4 levels).

      per_capita_income
         Per capita income in the county.

      median_hh_income
         Median household income in the county.

      smoking_ban
         Indicates if there is a smoking ban in place (factor with 3
         levels).

      .. rubric:: Source
         :name: source

      United States Census Bureau
