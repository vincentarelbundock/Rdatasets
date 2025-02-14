.. container::

   .. container::

      ================== ===============
      state_of_the_state R Documentation
      ================== ===============

      .. rubric:: What America’s Governors Are Talking About
         :name: what-americas-governors-are-talking-about

      .. rubric:: Description
         :name: description

      The raw data behind the story "What America’s Governors Are
      Talking About"
      https://fivethirtyeight.com/features/what-americas-governors-are-talking-about/

      .. rubric:: Usage
         :name: usage

      .. code:: R

         state_index

         state_words

      .. rubric:: Format
         :name: format

      2 data frames about the 50 U.S Governors' Speeches

      An object of class ``spec_tbl_df`` (inherits from ``tbl_df``,
      ``tbl``, ``data.frame``) with 2223 rows and 9 columns.

      .. rubric:: state_index
         :name: state_index

      A data frame with 50 rows representing the 50 U.S. states and 5
      variables:

      state
         the state

      governor
         the name of the state's governor

      party
         the party of the state's governor

      filename
         the filename of the speech in the speeches folder at
         https://github.com/rudeboybert/fivethirtyeight/tree/master/data-raw/state-of-the-state/speeches

      url
         a link to an official/media source for the speech

      .. rubric:: state_words
         :name: state_words

      A data frame with 2,223 rows representing phrases and 9 variables:

      phrase
         one-, two-, and three-word phrases spoken repeatedly

      category
         thematic categories for the phrases

      d_speeches
         number of Democratic speeches containing the phrase

      r_speeches
         number of Republican speeches containing the phrase

      total
         total number of speeches containing the phrase

      percent_of_d_speeches
         percent of the 23 Democratic speeches containing the phrase

      percent_of_r_speeches
         percent of the 27 Republican speeches containing the phrase

      chi2
         the chi-square test statistic for statistical significance

      pval
         p-value for chi^2 test

      .. rubric:: Source
         :name: source

      The chi-square test statistic
      https://scikit-learn.org/stable/modules/generated/sklearn.feature_selection.chi2.html#sklearn.feature_selection.chi2
