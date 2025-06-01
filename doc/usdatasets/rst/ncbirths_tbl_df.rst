.. container::

   .. container::

      =============== ===============
      ncbirths_tbl_df R Documentation
      =============== ===============

      .. rubric:: North Carolina births, 1000 cases
         :name: north-carolina-births-1000-cases

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'ncbirths_tbl_df' to avoid
      confusion with other packages in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      'usdatasets' package and identifies it as a tibble. The original
      content of the dataset has not been modified.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(ncbirths_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 1000 observations and 13 variables:

      fage
         Integer representing the father's age.

      mage
         Integer representing the mother's age.

      mature
         Factor with 2 levels indicating if the mother is mature (>=35
         years).

      weeks
         Integer representing the number of gestation weeks.

      premie
         Factor with 2 levels indicating if the baby was born
         prematurely.

      visits
         Integer representing the number of prenatal visits.

      marital
         Factor with 2 levels indicating the marital status of the
         mother.

      gained
         Integer representing the mother's weight gain during pregnancy
         (in pounds).

      weight
         Numeric value representing the baby's birth weight (in grams).

      lowbirthweight
         Factor with 2 levels indicating if the baby was born with low
         birth weight.

      gender
         Factor with 2 levels indicating the baby's gender.

      habit
         Factor with 2 levels indicating if the mother has a smoking
         habit.

      whitemom
         Factor with 2 levels indicating if the mother is white.

      .. rubric:: Source
         :name: source

      Data from birth records in North Carolina
