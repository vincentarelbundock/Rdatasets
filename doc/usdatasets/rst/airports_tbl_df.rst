.. container::

   .. container::

      =============== ===============
      airports_tbl_df R Documentation
      =============== ===============

      .. rubric:: Airport metadata - U.S. Airports Information
         :name: airport-metadata---u.s.-airports-information

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'airports_tbl_df' to avoid
      confusion with other packages in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      'usdatasets' package and assists users in identifying its specific
      characteristics. The suffix 'tbl_df' identifies the dataset as a
      tibble, helping to differentiate it from other datasets within the
      package. The original content of the dataset has not been modified
      in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(airports_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 1,458 observations and 8 variables:

      faa
         FAA airport code (character).

      name
         Name of the airport (character).

      lat
         Latitude of the airport (numeric).

      lon
         Longitude of the airport (numeric).

      alt
         Altitude of the airport (numeric).

      tz
         Time zone (numeric).

      dst
         Daylight saving time flag (character).

      tzone
         Time zone name (character).

      .. rubric:: Source
         :name: source

      U.S. Federal Aviation Administration (FAA).
