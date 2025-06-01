.. container::

   .. container::

      ======================= ===============
      nycvehiclethefts_tbl_df R Documentation
      ======================= ===============

      .. rubric:: Thefts of motor vehicles 2014 to 2017
         :name: thefts-of-motor-vehicles-2014-to-2017

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'nycvehiclethefts_tbl_df' to
      avoid confusion with other packages in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      'usdatasets' package and identifies it as a tibble. The original
      content of the dataset has not been modified.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(nycvehiclethefts_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 35,746 observations and 9 variables:

      uid
         Integer value representing a unique identifier for each vehicle
         theft incident.

      date_single
         Character value representing the single date of the theft
         incident.

      date_start
         Character value representing the start date of the theft
         incident.

      date_end
         Character value representing the end date of the theft
         incident.

      longitude
         Numeric value indicating the longitude where the incident
         occurred.

      latitude
         Numeric value indicating the latitude where the incident
         occurred.

      location_type
         Character value representing the type of location where the
         theft took place.

      location_category
         Character value indicating the category of the location.

      census_block
         Character value indicating the census block where the incident
         took place.

      .. rubric:: Source
         :name: source

      Data from the New York City Vehicle Thefts records
