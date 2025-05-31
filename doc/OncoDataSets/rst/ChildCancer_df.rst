.. container::

   .. container::

      ============== ===============
      ChildCancer_df R Documentation
      ============== ===============

      .. rubric:: Childhood Cancer Data from North Portugal
         :name: childhood-cancer-data-from-north-portugal

      .. rubric:: Description
         :name: description

      This dataset, ChildCancer_df, is a data frame containing
      information on 406 children diagnosed with cancer between January
      1, 1999, and December 31, 2003, in the region of North Portugal.
      The dataset includes complete records on the age at diagnosis,
      demographic details, and survival information. Due to the interval
      sampling, the age at diagnosis is doubly truncated by the time
      from birth to the beginning and end of the study.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(ChildCancer_df)

      .. rubric:: Format
         :name: format

      A data frame with 406 observations and 8 variables:

      X
         Unspecified numerical variable (numeric).

      U
         Unspecified numerical variable (numeric).

      V
         Unspecified numerical variable (numeric).

      ICCGroup
         Cancer group classification (numeric).

      Status
         Survival status of the child: 1 = alive, 2 = deceased
         (numeric).

      SurvTime
         Survival time in days (numeric).

      Residence
         Residence type of the child: 1 = urban, 2 = rural (numeric).

      Sex
         Sex of the child: 1 = male, 2 = female (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'ChildCancer_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the DTDA package. The childhood cancer data were
      gathered from the IPO (Registo Oncológico do Norte) service in
      North Portugal, kindly provided by Doctor Maria José Bento.
