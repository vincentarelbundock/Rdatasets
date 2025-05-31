.. container::

   .. container::

      ===================== ===============
      cancer_in_dogs_tbl_df R Documentation
      ===================== ===============

      .. rubric:: Cancer in Dogs and Exposure to 2,4-D Herbicide
         :name: cancer-in-dogs-and-exposure-to-24-d-herbicide

      .. rubric:: Description
         :name: description

      This dataset, cancer_in_dogs_tbl_df, is a tibble containing
      information from a study conducted in 1994. The study aimed to
      determine whether there is an increased risk of cancer in dogs
      exposed to the herbicide 2,4-Dichlorophenoxyacetic acid (2,4-D).
      It includes data from 491 dogs diagnosed with cancer (case group)
      and 945 dogs without cancer (control group).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(cancer_in_dogs_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 1,436 observations and 2 variables:

      order
         Indicates whether the dog belongs to the "case" group (with
         cancer) or the "control" group (without cancer) (factor with 2
         levels).

      response
         Indicates the dog's exposure to the herbicide 2,4-D, with
         levels such as "exposed" or "not exposed" (factor with 2
         levels).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'cancer_in_dogs_tbl_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix 'tbl_df' indicates that the dataset is
      a tibble. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the openintro package. Original study: Hayes HM,
      Tarone RE, Cantor KP, Jessen CR, McCurnin DM, and Richardson RC.
      1991. Case-Control Study of Canine Malignant Lymphoma: Positive
      Association With Dog Owner's Use of 2,4-Dichlorophenoxyacetic Acid
      Herbicides. \*Journal of the National Cancer Institute\*,
      83(17):1226-1231.
