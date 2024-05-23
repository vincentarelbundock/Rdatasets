.. container::

   .. container::

      ========= ===============
      arthritis R Documentation
      ========= ===============

      .. rubric:: Rheumatoid Arthritis Clinical Trial
         :name: rheumatoid-arthritis-clinical-trial

      .. rubric:: Description
         :name: description

      Rheumatoid self-assessment scores for 302 patients, measured on a
      five-level ordinal response scale at three follow-up times.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         arthritis

      .. rubric:: Format
         :name: format

      A data frame with 906 observations on the following 7 variables:

      id
         Patient identifier variable.

      y
         Self-assessment score of rheumatoid arthritis measured on a
         five-level ordinal response scale.

      sex
         Coded as (1) for female and (2) for male.

      age
         Recorded at the baseline.

      trt
         Treatment group variable, coded as (1) for the placebo group
         and (2) for the drug group.

      baseline
         Self-assessment score of rheumatoid arthritis at the baseline.

      time
         Follow-up time recorded in months.

      .. rubric:: Source
         :name: source

      Lipsitz, S.R. and Kim, K. and Zhao, L. (1994) Analysis of repeated
      categorical data using generalized estimating equations.
      *Statistics in Medicine*, **13**, 1149–1163.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(arthritis)
         str(arthritis)
