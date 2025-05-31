.. container::

   .. container::

      ==================== ===============
      HeadNeckCarcinoma_df R Documentation
      ==================== ===============

      .. rubric:: Head and Neck Squamous-Cell Carcinoma Treatment
         :name: head-and-neck-squamous-cell-carcinoma-treatment

      .. rubric:: Description
         :name: description

      This dataset, HeadNeckCarcinoma_df, is a data frame containing
      results from 65 trials examining mortality risk in patients with
      nonmetastatic head and neck squamous-cell carcinoma receiving
      either locoregional treatment plus chemotherapy versus
      locoregional treatment alone. The dataset provides the observed
      minus expected number of deaths and corresponding variances in the
      locoregional treatment plus chemotherapy group.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(HeadNeckCarcinoma_df)

      .. rubric:: Format
         :name: format

      A data frame with 65 observations and 5 variables:

      id
         Trial identifier (numeric).

      trial
         Name of the trial (character).

      OmE
         Observed minus expected number of deaths (numeric).

      V
         Variance of the observed minus expected deaths (numeric).

      grp
         Treatment group (integer).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'HeadNeckCarcinoma_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the metadat package. Pignon, J. P., Bourhis, J.,
      Domenge, C., & Designe, L. (2000). Chemotherapy added to
      locoregional treatment for head and neck squamous-cell carcinoma:
      Three meta-analyses of updated individual data. Lancet, 355(9208),
      949-955. https://doi.org/10.1016/S0140-6736(00)90011-4
