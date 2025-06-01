.. container::

   .. container::

      =============== ===============
      cardiac_gwas_df R Documentation
      =============== ===============

      .. rubric:: Coronary Artery Disease GWAS Meta-Analysis
         :name: coronary-artery-disease-gwas-meta-analysis

      .. rubric:: Description
         :name: description

      This dataset, cardiac_gwas_df, is a data frame containing
      genome-wide association study (GWAS) results from a multi-ethnic
      meta-analysis of coronary artery disease (CAD). It includes 9,919
      genetic variants with their effect sizes and study
      characteristics.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(cardiac_gwas_df)

      .. rubric:: Format
         :name: format

      A data frame with 9,919 observations and 7 variables:

      beta_flipped
         Effect size estimates (numeric)

      gcse
         Genomic control standard error (numeric)

      variants
         Genetic variant identifiers (character)

      studies
         Participating studies (character)

      cases
         Number of cases (integer)

      controls
         Number of controls (integer)

      fdr214_gwas46
         False discovery rate adjusted p-values (numeric)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'cardiac_gwas_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a standard data frame. The original content has not
      been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the getmstatistic package version 0.2.2
