.. container::

   .. container::

      ============= ===============
      census_tbl_df R Documentation
      ============= ===============

      .. rubric:: Random sample of 2000 U.S. Census Data
         :name: random-sample-of-2000-u.s.-census-data

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'census_tbl_df' to avoid
      confusion with other packages in the R ecosystem from which
      datasets have been sourced. This naming convention helps
      distinguish this dataset as part of the 'usdatasets' package and
      assists users in identifying its specific characteristics. The
      suffix 'tbl_df' identifies the dataset as a tibble. The original
      content of the dataset has not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(census_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 500 observations and 8 variables:

      census_year
         Year of the census (in integer).

      state_fips_code
         FIPS code for the state (factor with 47 levels).

      total_family_income
         Total family income (in US dollars).

      age
         Age of the individual (in years).

      sex
         Sex of the individual (factor: male/female).

      race_general
         General race category (factor with 8 levels).

      marital_status
         Marital status of the individual (factor with 6 levels).

      total_personal_income
         Total personal income (in US dollars).

      .. rubric:: Source
         :name: source

      US Census Bureau
