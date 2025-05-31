.. container::

   .. container::

      ===================== ===============
      AIPulmonaryNodules_df R Documentation
      ===================== ===============

      .. rubric:: AI for Assessment of Indeterminate Pulmonary Nodules
         :name: ai-for-assessment-of-indeterminate-pulmonary-nodules

      .. rubric:: Description
         :name: description

      This dataset, AIPulmonaryNodules_df, is a data frame containing
      data from a study on the performance of an artificial intelligence
      (AI) risk stratification tool for assessing Indeterminate
      Pulmonary Nodules (IPNs) in chest CT scans. The dataset includes
      information on whether cancer was diagnosed and the AI tool's
      rating of the probability of cancer (from 0 to 100).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(AIPulmonaryNodules_df)

      .. rubric:: Format
         :name: format

      A data frame with 200 observations and 2 variables:

      cancer
         Cancer diagnosis – whether the nodule is cancerous (1 = cancer,
         0 = no cancer) (integer).

      rating
         AI rating of the probability of cancer, ranging from 0 to 100
         (integer).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'AIPulmonaryNodules_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the R4HCR package.
