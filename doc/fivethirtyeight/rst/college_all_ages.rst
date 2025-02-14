.. container::

   .. container::

      ================ ===============
      college_all_ages R Documentation
      ================ ===============

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

         college_all_ages

      .. rubric:: Format
         :name: format

      A data frame with 173 rows representing majors (all ages) and 11
      variables:

      major_code
         Major code, FO1DP in ACS PUMS

      major
         Major description

      major_category
         Category of major from Carnevale et al

      total
         Total number of people with major

      employed
         Number employed (ESR == 1 or 2)

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

      .. rubric:: Source
         :name: source

      See
      https://github.com/fivethirtyeight/data/blob/master/college-majors/readme.md.

      .. rubric:: See Also
         :name: see-also

      ``college_grad_students``, ``college_recent_grads``
