.. container::

   .. container::

      ================ ===============
      BladderCancer_df R Documentation
      ================ ===============

      .. rubric:: Bladder Cancer Recurrences
         :name: bladder-cancer-recurrences

      .. rubric:: Description
         :name: description

      This dataset, BladderCancer_df, is a data frame containing data on
      recurrences of bladder cancer. It is commonly used to demonstrate
      methodology for recurrent event modelling. The dataset includes
      information from 340 observations and 7 variables related to
      bladder cancer recurrences.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(BladderCancer_df)

      .. rubric:: Format
         :name: format

      A data frame with 340 observations and 7 variables:

      id
         Patient identifier (integer).

      rx
         Treatment received: 1 = thiotepa, 2 = placebo (numeric).

      number
         Number of recurrences (integer).

      size
         Size of the recurrence (integer).

      stop
         Time at which the event or censoring occurred (integer).

      event
         Event status: 1 = recurrence, 0 = no recurrence or death
         (numeric).

      enum
         Event enumeration (integer).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'BladderCancer_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the survival package.
