.. container::

   .. container::

      ================== ===============
      homicides15_tbl_df R Documentation
      ================== ===============

      .. rubric:: Homicides in nine cities in 2015
         :name: homicides-in-nine-cities-in-2015

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'homicides15_tbl_df' to avoid
      confusion with other packages in the R ecosystem from which
      datasets have been sourced. This naming convention helps
      distinguish this dataset as part of the 'usdatasets' package and
      assists users in identifying its specific characteristics. The
      suffix 'tbl_df' identifies the dataset as a tibble. The original
      content of the dataset has not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(homicides15_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 1922 observations and 15 variables:

      uid
         Unique identifier (integer).

      city_name
         City name where the homicide occurred (character).

      offense_code
         Offense code (character).

      offense_type
         Type of offense (character).

      date_single
         Date of the homicide (POSIXct).

      address
         Location address of the homicide (character).

      longitude
         Longitude of the homicide location (numeric).

      latitude
         Latitude of the homicide location (numeric).

      location_type
         Type of location where the homicide occurred (character).

      location_category
         Category of the location (character).

      fips_state
         FIPS code of the state (integer).

      fips_county
         FIPS code of the county (character).

      tract
         Census tract where the homicide occurred (character).

      block_group
         Block group number (integer).

      block
         Block number (integer).

      .. rubric:: Source
         :name: source

      2015 Homicides Data
