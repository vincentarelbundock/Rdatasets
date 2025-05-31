.. container::

   .. container::

      ================== ===============
      hate_crimes_tbl_df R Documentation
      ================== ===============

      .. rubric:: US Hate Crimes & Socioeconomic Factors
         :name: us-hate-crimes-socioeconomic-factors

      .. rubric:: Description
         :name: description

      This dataset contains data on hate crimes across the United States
      and associated socioeconomic factors. It provides insights into
      potential relationships between income inequality, socioeconomic
      characteristics, and the frequency of hate crimes.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(hate_crimes_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 51 observations and 13 variables:

      state
         Full name of the state (character).

      state_abbrev
         Abbreviation of the state (character).

      median_house_inc
         Median household income (integer).

      share_unemp_seas
         Share of unemployed people (seasonally adjusted) (numeric).

      share_pop_metro
         Share of the population living in metropolitan areas (numeric).

      share_pop_hs
         Share of the population with at least a high school education
         (numeric).

      share_non_citizen
         Share of the population who are non-citizens (numeric).

      share_white_poverty
         Share of the white population living in poverty (numeric).

      gini_index
         Gini index of income inequality (numeric).

      share_non_white
         Share of the population who are non-white (numeric).

      share_vote_trump
         Share of votes for Donald Trump in the 2016 presidential
         election (numeric).

      hate_crimes_per_100k_splc
         Hate crimes per 100,000 people as reported by the SPLC
         (numeric).

      avg_hatecrimes_per_100k_fbi
         Average hate crimes per 100,000 people as reported by the FBI
         (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'hate_crimes_tbl_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'tbl_df' indicates that the
      dataset is a tibble, a modern version of data frames in R. The
      original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      The raw data behind the story "Higher Rates Of Hate Crimes Are
      Tied To Income Inequality" by FiveThirtyEight.
