.. container::

   .. container::

      ===================== ===============
      college_grad_students R Documentation
      ===================== ===============

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

         college_grad_students

      .. rubric:: Format
         :name: format

      A data frame with 173 rows representing majors (graduate vs
      nongraduate students) and 22 variables:

      major_code
         Major code, FO1DP in ACS PUMS

      major
         Major description

      major_category
         Category of major from Carnevale et al

      grad_total
         Total number of people with major

      grad_sample_size
         Sample size (unweighted) of full-time, year-round ONLY (used
         for earnings)

      grad_employed
         Number employed (ESR == 1 or 2)

      grad_employed_fulltime_yearround
         Employed at least 50 weeks (WKW == 1) and at least 35 hours
         (WKHP >= 35)

      grad_unemployed
         Number unemployed (ESR == 3)

      grad_unemployment_rate
         Unemployed / (Unemployed + Employed)

      grad_p25th
         25th percentile of earnings

      grad_median
         Median earnings of full-time, year-round workers

      grad_p75th
         75th percentile of earnings

      nongrad_total
         Total number of people with major

      nongrad_employed
         Number employed (ESR == 1 or 2)

      nongrad_employed_fulltime_yearround
         Employed at least 50 weeks (WKW == 1) and at least 35 hours
         (WKHP >= 35)

      nongrad_unemployed
         Number unemployed (ESR == 3)

      nongrad_unemployment_rate
         Unemployed / (Unemployed + Employed)

      nongrad_p25th
         25th percentile of earnings

      nongrad_median
         Median earnings of full-time, year-round workers

      nongrad_p75th
         75th percentile of earnings

      grad_share
         grad_total / (grad_total + nongrad_total)

      grad_premium
         (grad_median-nongrad_median)/nongrad_median

      .. rubric:: Source
         :name: source

      See
      https://github.com/fivethirtyeight/data/blob/master/college-majors/readme.md.

      .. rubric:: See Also
         :name: see-also

      ``college_all_ages``, ``college_recent_grads``
