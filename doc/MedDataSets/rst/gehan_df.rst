.. container::

   .. container::

      ======== ===============
      gehan_df R Documentation
      ======== ===============

      .. rubric:: Remission Times of Leukaemia Patients
         :name: remission-times-of-leukaemia-patients

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'gehan_df' to avoid confusion
      with other datasets from packages in the R ecosystem and to follow
      the naming conventions of the 'MedDataSets' package. The suffix
      '\_df' indicates that this dataset is a data frame, helping to
      distinguish it from other datasets within the package and from
      those in the broader R ecosystem. The original content of the
      dataset has not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(gehan_df)

      .. rubric:: Format
         :name: format

      A data frame with 42 observations and 4 variables:

      pair
         An integer representing the patient pair identifier.

      time
         An integer indicating the time to remission (in days).

      cens
         An integer indicating whether the observation was censored (1
         for censored, 0 for not censored).

      treat
         A factor indicating the treatment group (with 2 possible
         levels).

      .. rubric:: Details
         :name: details

      This dataset contains information on the remission times of
      leukaemia patients, including treatment information and whether
      the remission time was censored.

      .. rubric:: Source
         :name: source

      Data collected from clinical studies on leukaemia treatment and
      remission.
