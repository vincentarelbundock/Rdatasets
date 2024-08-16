.. container::

   .. container::

      ========= ===============
      scorecard R Documentation
      ========= ===============

      .. rubric:: College Scorecard: Scorecard Data
         :name: college-scorecard-scorecard-data

      .. rubric:: Description
         :name: description

      Historical data from the U.S. College Scorecard dataset. The data
      includes historical information on the number of students, average
      cost, median earnings after graduations, rates of admission and
      completion, and ACT and SAT test scores.

      The data set contain only colleges that participate in Title IV
      federal financial aid programs. In the tidy data set, column names
      have been changed for readability and consistency.

      You can find the original data set at the U.S. Department of
      Education's `College Scorecard
      website <https://collegescorecard.ed.gov/data/>`__. The code for
      the data transformation process is available at
      https://github.com/gadenbuie/scorecard-db.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         scorecard

      .. rubric:: Format
         :name: format

      A data frame with 183,306 rows and 24 variables. Original column
      names from the source dataset are noted in parenthesis.

      ``id``
         ``⁠[integer]⁠`` A unique identifier for each institution.
         (``UNITID``)

      ``academic_year``
         ``⁠[character]⁠`` The academic year of the record.

      ``n_undergrads``
         ``⁠[integer]⁠`` Enrollment of undergraduate
         certificate/degree-seeking students. (``UGDS``)

      ``cost_tuition_in``
         ``⁠[numeric]⁠`` In-state tuition and fees. (``TUITIONFEE_IN``)

      ``cost_tuition_out``
         ``⁠[numeric]⁠`` Out-of-state tuition and fees.
         (``TUITIONFEE_OUT``)

      ``cost_books``
         ``⁠[numeric]⁠`` Cost of attendance: estimated books and supplies.
         (``BOOKSUPPLY``)

      ``cost_room_board_on``
         ``⁠[numeric]⁠`` Cost of attendance: on-campus room and board.
         (``ROOMBOARD_ON``)

      ``cost_room_board_off``
         ``⁠[numeric]⁠`` Cost of attendance: off-campus room and board.
         (``ROOMBOARD_OFF``)

      ``cost_avg``
         ``⁠[numeric]⁠`` Average net price for Title IV institutions
         (private for-profit and nonprofit institutions).
         (``NPT4_PRIV``)

      ``cost_avg_income_0_30k``
         ``⁠[numeric]⁠`` Average net price for $0-$30,000 family income
         (private for-profit and nonprofit institutions).
         (``NPT41_PRIV``)

      ``cost_avg_income_30_48k``
         ``⁠[numeric]⁠`` Average net price for $30,001-$48,000 family
         income (private for-profit and nonprofit institutions).
         (``NPT42_PRIV``)

      ``cost_avg_income_48_75k``
         ``⁠[numeric]⁠`` Average net price for $48,001-$75,000 family
         income (private for-profit and nonprofit institutions).
         (``NPT43_PRIV``)

      ``cost_avg_income_75_110k``
         ``⁠[numeric]⁠`` Average net price for $75,001-$110,000 family
         income (private for-profit and nonprofit institutions).
         (``NPT44_PRIV``)

      ``cost_avg_income_110k_plus``
         ``⁠[numeric]⁠`` Average net price for $110,000+ family income
         (private for-profit and nonprofit institutions).
         (``NPT45_PRIV``)

      ``amnt_earnings_med_10y``
         ``⁠[numeric]⁠`` Median earnings of students working and not
         enrolled 10 years after entry. (``MD_EARN_WNE_P10``)

      ``rate_completion``
         ``⁠[numeric]⁠`` Completion rate for first-time, full-time
         students at four-year institutions (100% of expected time to
         completion). (``C100_4``)

      ``rate_admissions``
         ``⁠[numeric]⁠`` Admission rate for all campuses rolled up to the
         6-digit OPE ID. (``ADM_RATE_ALL``)

      ``score_sat_avg``
         ``⁠[numeric]⁠`` Average SAT equivalent score of students
         admitted. (``SAT_AVG``)

      ``score_act_p25``
         ``⁠[numeric]⁠`` 25th percentile of the ACT cumulative score.
         (``ACTCM25``)

      ``score_act_p75``
         ``⁠[numeric]⁠`` 75th percentile of the ACT cumulative score.
         (``ACTCM75``)

      ``score_sat_verbal_p25``
         ``⁠[numeric]⁠`` 25th percentile of SAT scores at the institution
         (critical reading). (``SATVR25``)

      ``score_sat_verbal_p75``
         ``⁠[numeric]⁠`` 75th percentile of SAT scores at the institution
         (critical reading). (``SATVR75``)

      ``score_sat_math_p25``
         ``⁠[numeric]⁠`` 25th percentile of SAT scores at the institution
         (math). (``SATMT25``)

      ``score_sat_math_p75``
         ``⁠[numeric]⁠`` 75th percentile of SAT scores at the institution
         (math). (``SATMT75``)

      .. rubric:: References
         :name: references

      https://collegescorecard.ed.gov/data/
