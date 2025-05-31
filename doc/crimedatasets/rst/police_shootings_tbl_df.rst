.. container::

   .. container::

      ======================= ===============
      police_shootings_tbl_df R Documentation
      ======================= ===============

      .. rubric:: Fatal Police Shootings data
         :name: fatal-police-shootings-data

      .. rubric:: Description
         :name: description

      This dataset contains records of every fatal police shooting by an
      on-duty officer since January 1, 2015. It includes information
      about the shooting incidents, the characteristics of the
      individuals involved, and details such as mental illness signs,
      body camera usage, and more. This dataset is valuable for
      analyzing trends and patterns in fatal police shootings in the
      United States.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(police_shootings_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 6,421 observations and 12 variables:

      date
         Date of the shooting (Date).

      manner_of_death
         How the individual died (character).

      armed
         Indicates if the individual was armed (character).

      age
         Age of the individual (numeric).

      gender
         Gender of the individual (character).

      race
         Race of the individual (character).

      city
         City where the shooting occurred (character).

      state
         State where the shooting occurred (character).

      signs_of_mental_illness
         Whether the individual showed signs of mental illness
         (logical).

      threat_level
         Perceived threat level of the individual (character).

      flee
         Whether the individual was fleeing (character).

      body_camera
         Whether the officer was wearing a body camera (logical).

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'police_shootings_tbl_df' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'tbl_df' indicates that the
      dataset is a tibble, which is a modern version of a data frame in
      R. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Washington Post Fatal Police Shootings database.
