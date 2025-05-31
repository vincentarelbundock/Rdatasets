.. container::

   .. container::

      =================== ===============
      UScrimerates_tbl_df R Documentation
      =================== ===============

      .. rubric:: US Crime Rates (1960–2019)
         :name: us-crime-rates-19602019

      .. rubric:: Description
         :name: description

      This dataset contains national data on the number of crimes
      committed in the United States between 1960 and 2019. It provides
      annual statistics on total crimes, violent crimes, property
      crimes, and their subcategories.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(UScrimerates_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 60 rows and 12 variables:

      year
         Year of the recorded data (numeric).

      population
         Total US population (numeric).

      total
         Total number of crimes (numeric).

      violent
         Total number of violent crimes (numeric).

      property
         Total number of property crimes (numeric).

      murder
         Number of murders (numeric).

      forcible_rape
         Number of reported cases of forcible rape (numeric).

      robbery
         Number of robberies (numeric).

      aggravated_assault
         Number of aggravated assaults (numeric).

      burglary
         Number of burglaries (numeric).

      larceny_theft
         Number of larceny-theft crimes (numeric).

      vehicle_theft
         Number of motor vehicle thefts (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'UScrimerates_tbl_df' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'tbl_df' indicates that the
      dataset is stored as a tibble. The original content has not been
      modified in any way.

      .. rubric:: Source
         :name: source

      National crime data for the United States (1960–2019).
