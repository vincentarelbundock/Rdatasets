.. container::

   .. container::

      =================== ===============
      cardiovascular_list R Documentation
      =================== ===============

      .. rubric:: Statin Dose Comparison Trials for CVD
         :name: statin-dose-comparison-trials-for-cvd

      .. rubric:: Description
         :name: description

      This dataset, cardiovascular_list, is a list containing data from
      34 clinical trials comparing low dose (1), high dose (2), and
      placebo (3) statins for cardiovascular disease prevention. The
      dataset includes study identifiers, treatment assignments, and
      outcome counts.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(cardiovascular_list)

      .. rubric:: Format
         :name: format

      A list with 4 components:

      Study
         Study identifiers (integer vector of length 34)

      Treat
         Treatment assignments (numeric vector: 1=low dose, 2=high dose,
         3=placebo)

      Outcomes
         Outcome matrix with 34 rows and 3 columns:

         Alive
            Number of patients alive (numeric)

         FnCVD
            Number with non-fatal CVD events (numeric)

         FCVD
            Number with fatal CVD events (numeric)

      N
         Sample sizes (numeric vector of length 34)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'cardiovascular_list' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The original content has not been
      modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the bnma package version 1.6.0
