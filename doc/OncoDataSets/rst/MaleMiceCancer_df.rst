.. container::

   .. container::

      ================= ===============
      MaleMiceCancer_df R Documentation
      ================= ===============

      .. rubric:: Mouse Cancer Data
         :name: mouse-cancer-data

      .. rubric:: Description
         :name: description

      This dataset, MaleMiceCancer_df, is a data frame containing data
      on the occurrence of cancer in male mice. The dataset records the
      number of days until the occurrence of cancer under different
      treatment conditions. It includes 181 observations and 4
      variables.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(MaleMiceCancer_df)

      .. rubric:: Format
         :name: format

      A data frame with 181 observations and 4 variables:

      trt
         Treatment group: 1 = treatment, 2 = control (factor).

      days
         Number of days until the occurrence of cancer (numeric).

      outcome
         Cancer outcome: levels include 'none', 'localized',
         'metastatic', and 'other' (factor).

      id
         Mouse identifier (integer).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'MaleMiceCancer_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the survival package.
