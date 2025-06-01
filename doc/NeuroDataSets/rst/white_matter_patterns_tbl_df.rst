.. container::

   .. container::

      ============================ ===============
      white_matter_patterns_tbl_df R Documentation
      ============================ ===============

      .. rubric:: Expected Patterns of White Matter
         :name: expected-patterns-of-white-matter

      .. rubric:: Description
         :name: description

      This dataset, white_matter_patterns_tbl_df, is a tibble containing
      expected patterns of white matter in schizophrenia derived from
      large-scale meta-analyses by the ENIGMA consortium. It includes
      data from multiple neurological and psychiatric conditions for
      comparison.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(white_matter_patterns_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 24 observations and 15 variables:

      WM
         Character vector indicating white matter regions

      SSD
         Numeric vector of expected patterns for schizophrenia spectrum
         disorder

      MDD
         Numeric vector of expected patterns for major depressive
         disorder

      AD_ADNI
         Numeric vector of expected patterns for Alzheimer's disease
         (ADNI cohort)

      AD_ADNIOSYRIX
         Numeric vector of expected patterns for Alzheimer's disease
         (ADNI+OSYRIX cohort)

      BD
         Numeric vector of expected patterns for bipolar disorder

      Diabetes
         Numeric vector of expected patterns for diabetes

      HighBP
         Numeric vector of expected patterns for high blood pressure

      HighLipids
         Numeric vector of expected patterns for high lipids

      MET
         Numeric vector of expected patterns for metabolic syndrome

      DS_22q
         Numeric vector of expected patterns for 22q11.2 deletion
         syndrome

      PTSD
         Numeric vector of expected patterns for post-traumatic stress
         disorder

      TBI
         Numeric vector of expected patterns for traumatic brain injury

      OCD_pediatric
         Numeric vector of expected patterns for pediatric OCD

      OCD_adult
         Numeric vector of expected patterns for adult OCD

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'white_matter_patterns_tbl_df'
      to avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      NeuroDataSets package and assists users in identifying its
      specific characteristics. The suffix 'tbl_df' indicates that the
      dataset is a tibble. The original content has not been modified in
      any way.

      .. rubric:: Source
         :name: source

      Data taken from the RVIpkg package version 0.3.2
