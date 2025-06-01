.. container::

   .. container::

      =============== ===============
      heartfailure_df R Documentation
      =============== ===============

      .. rubric:: Heart Failure rehospitalization risk
         :name: heart-failure-rehospitalization-risk

      .. rubric:: Description
         :name: description

      This dataset, heartfailure_df, is a data frame containing
      simulated data from 800 patients with heart failure who are at
      risk of recurrent hospitalization. The dataset includes 3,068
      observations (2,268 events) tracking patient outcomes over time.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(heartfailure_df)

      .. rubric:: Format
         :name: format

      A data frame with 3,068 observations and 6 variables:

      id
         Patient identification number (integer vector)

      treatment
         Treatment assignment (factor with 2 levels)

      t0
         Start time of observation period (numeric vector)

      t1
         End time of observation period (numeric vector)

      enum
         Event number (numeric vector)

      event
         Event indicator (numeric vector)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'heartfailure_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a standard data frame. The original content has not
      been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the survPen package version 2.0-2. Based on
      hfaction_cpx12 dataset from package WA.
