.. container::

   .. container::

      ============ ===============
      acs12_tbl_df R Documentation
      ============ ===============

      .. rubric:: American Community Survey 2012
         :name: american-community-survey-2012

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'acs12_tbl_df' to avoid
      confusion with other packages in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      'usdatasets' package and assists users in identifying its specific
      characteristics. The suffix 'tbl_df' identifies the dataset as a
      tibble data frame, helping to differentiate it from other datasets
      within the package. The original content of the dataset has not
      been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(acs12_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 2,000 observations and 13 variables:

      income
         Income of individuals (integer).

      employment
         Employment status (factor with 3 levels).

      hrs_work
         Number of hours worked per week (integer).

      race
         Race of individuals (factor with 4 levels).

      age
         Age of individuals (integer).

      gender
         Gender of individuals (factor with 2 levels: "male", "female").

      citizen
         Citizenship status (factor with 2 levels: "no", "yes").

      time_to_work
         Time taken to travel to work in minutes (integer).

      lang
         Primary language spoken at home (factor with 2 levels:
         "english", "other").

      married
         Marital status (factor with 2 levels: "no", "yes").

      edu
         Educational attainment (factor with 3 levels).

      disability
         Disability status (factor with 2 levels).

      birth_qrtr
         Birth quarter of individuals (factor with 4 levels).

      .. rubric:: Source
         :name: source

      American Community Survey, 2012.
