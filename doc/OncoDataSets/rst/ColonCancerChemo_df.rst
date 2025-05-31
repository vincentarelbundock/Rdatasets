.. container::

   .. container::

      =================== ===============
      ColonCancerChemo_df R Documentation
      =================== ===============

      .. rubric:: Chemotherapy for Stage B/C Colon Cancer
         :name: chemotherapy-for-stage-bc-colon-cancer

      .. rubric:: Description
         :name: description

      This dataset, ColonCancerChemo_df, is a data frame containing data
      from one of the first successful trials of adjuvant chemotherapy
      for stage B/C colon cancer. The dataset includes information from
      1858 observations and 16 variables. Each patient has two records:
      one for recurrence and one for death.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(ColonCancerChemo_df)

      .. rubric:: Format
         :name: format

      A data frame with 1858 observations and 16 variables:

      id
         Patient identifier (numeric).

      study
         Study identifier (numeric).

      rx
         Treatment received: 1 = observation, 2 = levamisole, 3 =
         levamisole+5-FU (factor).

      sex
         Sex of the patient: 1 = male, 2 = female (numeric).

      age
         Age of the patient (numeric).

      obstruct
         Obstruction of the colon: 1 = yes, 0 = no (numeric).

      perfor
         Perforation of the colon: 1 = yes, 0 = no (numeric).

      adhere
         Adherence to nearby organs: 1 = yes, 0 = no (numeric).

      nodes
         Number of positive lymph nodes detected (numeric).

      status
         Survival status: 1 = alive, 2 = dead (numeric).

      differ
         Tumor differentiation: 1 = well, 2 = moderate, 3 = poor
         (numeric).

      extent
         Tumor extent: 1 = submucosa, 2 = muscle, 3 = serosa, 4 =
         contiguous structures (numeric).

      surg
         Surgical intervention: 0 = short, 1 = long (numeric).

      node4
         Presence of 4+ positive lymph nodes: 1 = yes, 0 = no (numeric).

      time
         Follow-up time in days (numeric).

      etype
         Event type: 1 = recurrence, 2 = death (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'ColonCancerChemo_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the survival package.
