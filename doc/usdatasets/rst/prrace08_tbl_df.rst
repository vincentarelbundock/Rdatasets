.. container::

   .. container::

      =============== ===============
      prrace08_tbl_df R Documentation
      =============== ===============

      .. rubric:: Election results for the 2008 U.S. Presidential race
         :name: election-results-for-the-2008-u.s.-presidential-race

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'prrace08_tbl_df' to avoid
      confusion with other packages in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      'usdatasets' package and identifies it as a tibble. The original
      content of the dataset has not been modified.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(prrace08_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 51 observations and 7 variables:

      state
         Factor indicating the U.S. state (including Washington D.C.)
         where the election took place.

      state_full
         Factor providing the full name of the U.S. state corresponding
         to the abbreviation.

      n_obama
         Integer representing the number of votes received by Barack
         Obama in the state.

      p_obama
         Numeric representing the percentage of total votes received by
         Barack Obama in the state.

      n_mc_cain
         Integer representing the number of votes received by John
         McCain in the state.

      p_mc_cain
         Numeric representing the percentage of total votes received by
         John McCain in the state.

      el_votes
         Integer indicating the number of electoral votes allocated to
         the state.

      .. rubric:: Source
         :name: source

      Data on the 2008 U.S. presidential race results by state.
