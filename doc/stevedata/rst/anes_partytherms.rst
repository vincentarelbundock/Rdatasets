.. container::

   .. container::

      ================ ===============
      anes_partytherms R Documentation
      ================ ===============

      .. rubric:: Major Party (Democrat, Republican) Thermometer Index
         Data (1978-2012)
         :name: major-party-democrat-republican-thermometer-index-data-1978-2012

      .. rubric:: Description
         :name: description

      A data set on thermometer ratings for the Democratic party,
      Republican party, "both major parties", and a major party
      thermometer index from the American National Election Studies
      (1978-2012).

      .. rubric:: Usage
         :name: usage

      ::

         anes_partytherms

      .. rubric:: Format
         :name: format

      A data frame with 33830 observations on the following 19
      variables.

      ``year``
         the survey year

      ``uid``
         a unique identifier for each respondent, taken directly from
         the time-series files for potential merging

      ``stateabb``
         the two-character abbreviation for the state of residence for
         the respondent

      ``therm_dem``
         the respondent's thermometer rating of the Democratic party

      ``therm_gop``
         the respondent's thermometer rating of the Republican party

      ``therm_bmp``
         the respondent's thermometer rating of "both major parties"

      ``mpti``
         the "major party thermometer index" score for the respondent.
         See details for more.

      ``age``
         the age of the respondent

      ``educat``
         the education-level of the respondent. 1 = 8 grades or less. 2
         = high school, no diploma. 3 = high school diploma. 4 = high
         school "plus non-academic training". 5 = Some college, no
         degree (includes AA holders). 6 = BA-level degree. 7 = advanced
         degree, including Bachelor of Laws degrees.

      ``urbanism``
         1 = central cities. 2 = suburban areas. 3 = rural/small
         towns/outlying areas.

      ``pid7``
         1 = Strong Democrat. 2 = Weak Democrat. 3 = Independent, lean
         Democrat. 4 = Independent. 5 = Independent, lean Republican. 6
         = Weak Republican. 7 = Strong Republican

      ``incomeperc``
         respondent's household income percentile. 1 = 0-16 percentile.
         2 = 17-33. 3 = 34-67. 4 = 68-95. 5 = 96-100.

      ``race4``
         respondent's race-ethnicity summary. 1 = White, non-hispanic. 2
         = Black, non-hispanic. 3 = Hispanic. 4 = Other.

      ``unemployed``
         a binary numeric vector for if the respondent is temporarily
         unemployed.

      ``polint``
         the respondent's self-reported interest in public affairs. 1 =
         Hardly at all. 2 = Only now and then. 3 = Some of the time. 4 =
         Most of the time.

      ``distrust_govt``
         the respondent's self-reported (dis)trust in the federal
         government's ability to do what's right. 1 = Just about always
         (trust the government). 2 = Most of the time. 3 = Some of the
         time. 4 = None of the time/never.

      ``govt_crooked``
         the respondent's assessment of how many government officials
         are crooked. 1 = Hardly any. 2 = Not many. 3 = Quite a few;
         quite a lot.

      ``govt_waste``
         the respondent's assessment of how much the government wastes
         in tax money. 1 = Not very much. 2 = Some. 3 = A lot.

      ``govt_biginterests``
         the respondent's assessment of whether the government is run by
         a few big interests. 0 = Run for the benefit of all people. 1 =
         Run by a few big interests.

      .. rubric:: Details
         :name: details

      The major party thermometer index is calculated as the thermometer
      rating for the Democratic party minus the thermometer rating for
      the Republican party. 100 is then added to that difference, which
      is then divided by 2. Fractional results are rounded to the next
      highest integer. Also note the coding of the "government distrust"
      measures. These are reverse-coded from their original scales.

      .. rubric:: Source
         :name: source

      Data come from ANES's time series file.
