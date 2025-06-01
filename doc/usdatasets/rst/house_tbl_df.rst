.. container::

   .. container::

      ============ ===============
      house_tbl_df R Documentation
      ============ ===============

      .. rubric:: United States House of Representatives historical
         make-up
         :name: united-states-house-of-representatives-historical-make-up

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'house_tbl_df' to avoid
      confusion with other packages in the R ecosystem from which
      datasets have been sourced. This naming convention helps
      distinguish this dataset as part of the 'usdatasets' package and
      assists users in identifying its specific characteristics. The
      suffix 'tbl_df' identifies the dataset as a tibble. The original
      content of the dataset has not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(house_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 116 observations and 12 variables:

      congress
         Congress number (numeric).

      year_start
         Starting year of the congress (numeric).

      year_end
         Ending year of the congress (numeric).

      seats
         Total number of seats in the House of Representatives
         (numeric).

      p1
         Abbreviation of the first party (character).

      np1
         Number of seats for the first party (numeric).

      p2
         Abbreviation of the second party (character).

      np2
         Number of seats for the second party (numeric).

      other
         Number of seats for other parties (numeric).

      vac
         Number of vacant seats (numeric).

      del
         Number of delegate seats (numeric).

      res
         Number of resident commissioner seats (numeric).

      .. rubric:: Source
         :name: source

      Historical House of Representatives Data
