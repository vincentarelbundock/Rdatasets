.. container::

   .. container::

      =============== ===============
      Attorney_tbl_df R Documentation
      =============== ===============

      .. rubric:: Convictions Reported by U.S. Attorney's Offices
         :name: convictions-reported-by-u.s.-attorneys-offices

      .. rubric:: Description
         :name: description

      This dataset contains information on the number of convictions
      reported by U.S. attorney's offices, along with the number of
      staff members, normalized per 1 million population. The dataset
      also includes the district names for each observation.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Attorney_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 88 observations and 3 variables:

      staff
         Number of U.S. attorneys' office staff per 1 million population
         (integer).

      convict
         Number of convictions reported by U.S. attorneys' offices per 1
         million population (integer).

      district
         Name of the district (character). Possible values include major
         U.S. cities such as Albuquerque, Atlanta, Boston, Chicago,
         Houston, Miami, San Francisco, and others.

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'Attorney_tbl_df' to avoid
      confusion with other data sets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'tbl_df' indicates that the
      dataset is a tibble in R. The original content has not been
      modified in any way.

      .. rubric:: Source
         :name: source

      Data from U.S. Attorney's Office Reports.
