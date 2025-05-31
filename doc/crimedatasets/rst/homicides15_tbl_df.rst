.. container::

   .. container::

      ================== ===============
      homicides15_tbl_df R Documentation
      ================== ===============

      .. rubric:: Homicides in Nine US Cities (2015)
         :name: homicides-in-nine-us-cities-2015

      .. rubric:: Description
         :name: description

      This dataset contains detailed records of homicides that occurred
      in nine large US cities during the year 2015. The data includes
      geographic locations, offense codes, and additional metadata,
      making it valuable for analyzing patterns and trends in urban
      crime.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(homicides15_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 1,922 observations and 15 variables:

      uid
         Unique identifier for the record (integer).

      city_name
         Name of the city where the homicide occurred (character).

      offense_code
         Offense code for the homicide (character).

      offense_type
         Type of offense (character).

      date_single
         Date and time of the homicide (POSIXct).

      address
         Address where the homicide occurred (character).

      longitude
         Longitude of the location (numeric).

      latitude
         Latitude of the location (numeric).

      location_type
         Type of location (character).

      location_category
         Category of location (character).

      fips_state
         FIPS code for the state (integer).

      fips_county
         FIPS code for the county (character).

      tract
         Census tract identifier (character).

      block_group
         Census block group identifier (integer).

      block
         Census block identifier (integer).

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'homicides15_tbl_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'tbl_df' indicates that the
      dataset is stored as a tibble, offering better printing and
      subsetting capabilities in R. The original content has not been
      modified in any way.

      This dataset provides insights into homicides in urban areas,
      offering geographic and temporal information for each case.

      .. rubric:: Source
         :name: source

      Crime Open Database, 2015.
