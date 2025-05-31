.. container::

   .. container::

      ================ ===============
      Carcinoma_p53_df R Documentation
      ================ ===============

      .. rubric:: Mutant p53 Gene and Squamous Cell Carcinoma
         :name: mutant-p53-gene-and-squamous-cell-carcinoma

      .. rubric:: Description
         :name: description

      This dataset, Carcinoma_p53_df, is a data frame containing data
      related to the presence of the mutant p53 tumor suppressor gene
      and its potential role as a prognostic factor in patients with
      squamous cell carcinoma arising from the oropharynx cavity. The
      dataset includes unadjusted estimates of log hazard ratios for
      mutant p53 compared to normal p53 for disease-free and overall
      survival, along with their associated variances, collected from 6
      observational studies. The dataset consists of 6 observations with
      5 variables.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Carcinoma_p53_df)

      .. rubric:: Format
         :name: format

      A data frame with 6 observations and 5 variables:

      study
         Study identifier (integer).

      y1
         Unadjusted log hazard ratio for disease-free survival
         (numeric).

      y2
         Unadjusted log hazard ratio for overall survival (numeric).

      V1
         Variance of the log hazard ratio for disease-free survival
         (numeric).

      V2
         Variance of the log hazard ratio for overall survival
         (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'Carcinoma_p53_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the mixmeta package. References:

      -  Jackson D, Riley R, White IR (2011). Multivariate
         meta-analysis: Potential and promise. Statistics in Medicine.
         30 (20);2481–2498.

      -  Tandon S, Tudur-Smith C, Riley RD, et al. (2010). A systematic
         review of p53 as a prognostic factor of survival in squamous
         cell carcinoma of the four main anatomical subsites of the head
         and neck. Cancer Epidemiology, Biomarkers and Prevention. 19
         (2):574–587.

      -  Sera F, Armstrong B, Blangiardo M, Gasparrini A (2019). An
         extended mixed-effects framework for meta-analysis. Statistics
         in Medicine. 2019;38(29):5429–5444.
