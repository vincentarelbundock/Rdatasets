.. container::

   .. container::

      ============================ ===============
      alzheimers_biomarkers_tbl_df R Documentation
      ============================ ===============

      .. rubric:: Alzheimer's Disease Biomarkers Study
         :name: alzheimers-disease-biomarkers-study

      .. rubric:: Description
         :name: description

      This dataset, alzheimers_biomarkers_tbl_df, is a tibble containing
      clinical data from 333 patients in a study of Alzheimer's disease
      biomarkers. The study included patients with mild cognitive
      impairment and healthy controls, with measurements of demographic
      characteristics, apolipoprotein E genotype, protein biomarkers
      (including Abeta, Tau, and pTau), and clinical dementia scores.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(alzheimers_biomarkers_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 333 observations and 131 variables:

      age
         Numeric: Patient age

      male
         Numeric: Indicator for male gender (1 = male, 0 = female)

      Genotype
         Factor: Apolipoprotein E genotype

      Class
         Factor: Clinical classification (e.g., healthy, impaired)

      Ab_42
         Numeric: Amyloid-beta 42 protein measurement

      tau
         Numeric: Tau protein measurement

      p_tau
         Numeric: Phosphorylated Tau protein measurement

      [131 additional biomarker variables]
         Numeric measurements of various proteins and biomarkers

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'alzheimers_biomarkers_tbl_df'
      to avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      NeuroDataSets package. The suffix 'tbl_df' indicates that the
      dataset is a tibble. The original content has not been modified.

      .. rubric:: Source
         :name: source

      Data taken from the modeldata package version 1.4.0. Original
      study: Craig-Schapiro R, Kuhn M, Xiong C, et al. (2011)
      Multiplexed Immunoassay Panel Identifies Novel CSF Biomarkers for
      Alzheimer's Disease Diagnosis and Prognosis. PLoS ONE 6(4):
      e18850.
