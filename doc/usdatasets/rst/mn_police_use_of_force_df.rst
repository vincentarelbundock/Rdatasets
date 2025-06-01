.. container::

   .. container::

      ========================= ===============
      mn_police_use_of_force_df R Documentation
      ========================= ===============

      .. rubric:: Minneapolis police use of force data.
         :name: minneapolis-police-use-of-force-data.

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'mn_police_use_of_force_df'
      to avoid confusion with other packages in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      'usdatasets' package and identifies it as a data frame. The
      original content of the dataset has not been modified.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(mn_police_use_of_force_df)

      .. rubric:: Format
         :name: format

      A data frame with 12925 observations and 13 variables:

      response_datetime
         Character string representing the date and time of the
         response.

      problem
         Character string describing the nature of the problem.

      is_911_call
         Character string indicating whether the incident was initiated
         by a 911 call.

      primary_offense
         Character string indicating the primary offense involved in the
         incident.

      subject_injury
         Character string describing the injuries sustained by the
         subject, if any.

      force_type
         Character string describing the type of force used by the
         police.

      force_type_action
         Character string describing the specific actions related to the
         use of force.

      race
         Character string indicating the race of the subject involved in
         the incident.

      sex
         Character string indicating the sex of the subject.

      age
         Integer representing the age of the subject.

      type_resistance
         Character string describing the type of resistance offered by
         the subject.

      precinct
         Character string indicating the precinct in which the incident
         occurred.

      neighborhood
         Character string representing the neighborhood where the
         incident occurred.

      .. rubric:: Source
         :name: source

      Data from police use of force reports in Minnesota
