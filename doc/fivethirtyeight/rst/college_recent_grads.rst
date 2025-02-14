.. container::

   .. container::

      ==================== ===============
      college_recent_grads R Documentation
      ==================== ===============

      .. rubric:: The Economic Guide To Picking A College Major
         :name: the-economic-guide-to-picking-a-college-major

      .. rubric:: Description
         :name: description

      The raw data behind the story "The Economic Guide To Picking A
      College Major"
      https://fivethirtyeight.com/features/the-economic-guide-to-picking-a-college-major/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         college_recent_grads

      .. rubric:: Format
         :name: format

      A data frame with 173 rows representing majors (recent graduates)
      and 21 variables:

      rank
         Rank by median earnings

      major_code
         Major code, FO1DP in ACS PUMS

      major
         Major description

      major_category
         Category of major from Carnevale et al

      total
         Total number of people with major

      sample_size
         Sample size (unweighted) of full-time, year-round ONLY (used
         for earnings)

      men
         Men with major

      women
         Women with major

      sharewomen
         Proportion women

      employed
         Number employed (ESR == 1 or 2)

      employed_fulltime
         Employed 35 hours or more

      employed_parttime
         Employed less than 35 hours

      employed_fulltime_yearround
         Employed at least 50 weeks (WKW == 1) and at least 35 hours
         (WKHP >= 35)

      unemployed
         Number unemployed (ESR == 3)

      unemployment_rate
         Unemployed / (Unemployed + Employed)

      p25th
         25th percentile of earnings

      median
         Median earnings of full-time, year-round workers

      p75th
         75th percentile of earnings

      college_jobs
         Number with job requiring a college degree

      non_college_jobs
         Number with job not requiring a college degree

      low_wage_jobs
         Number in low-wage service jobs

      .. rubric:: Source
         :name: source

      See
      https://github.com/fivethirtyeight/data/blob/master/college-majors/readme.md.
      Note that ``women-stem.csv`` was a subset of the original
      ``recent-grads.csv``, so no data frame was created.

      .. rubric:: See Also
         :name: see-also

      ``college_grad_students``, ``college_all_ages``
