.. container::

   .. container::

      ============ ===============
      gss_spending R Documentation
      ============ ===============

      .. rubric:: Attitudes Toward National Spending in the General
         Social Survey (2018)
         :name: attitudes-toward-national-spending-in-the-general-social-survey-2018

      .. rubric:: Description
         :name: description

      This is a toy data set that collects attitudes on toward national
      spending for various things in the General Social Survey for 2018.
      I use these data for in-class illustration about ordinal variables
      and ordinal models.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         gss_spending

      .. rubric:: Format
         :name: format

      A data frame with 2348 observations on the following 33 variables.

      ``year``
         a numeric constant for the GSS survey year (2018)

      ``id``
         a unique identifier for the survey respondent

      ``age``
         a numeric vector for the age of the respondent (min: 18, max:
         89)

      ``sex``
         a numeric vector for the respondent's sex (1 = female, 0 =
         male)

      ``educ``
         a numeric vector for the highest year of school completed (min:
         0, max: 20)

      ``degree``
         a numeric vector for the respondent's highest degree (0 = did
         not graduate high school, 1 = high school, 2 = junior college,
         3 = bachelor degree, 4 = graduate degree)

      ``race``
         a numeric vector for the respondent's race (1 = white, 2 =
         black, 3 = other)

      ``rincom16``
         a numeric vector for the respondent's yearly income (min: 1
         (under $1,000), max: 26 ($170,000 or over))

      ``partyid``
         a numeric vector for the respondent's party identification on
         the familiar seven-point scale. NOTE: D to R partisanship in
         this variable goes from 0 to 6. 7 = supporters of other
         parties. You may want to recode this if you want an
         interval-level measure of partisanship.

      ``polviews``
         a numeric vector for the respondent's ideology (min: 1
         (extremely liberal), max: 7 (extremely conservative))

      ``xnorcsiz``
         a numeric vector for the NORC size code. This is a measure of
         what kind of area in which the respondent took the survey (i.e.
         lives). 1 = city, greater than 250k residents. 2 = city,
         between 50k-250k residents. 3 = suburbs of a large city. 4 =
         suburbs of a medium-sized city. 5 = unincorporated area of a
         large city. 6 = unincorporated area of a medium city. 7 = city,
         between 10-50k residents. 8 = town, greater than 2,500
         residents. 9 = smaller areas. 10 = open country.

      ``news``
         a numeric vector for how often the respondent reads the
         newspapers. 1 = everyday. 2 = a few times a week. 3 = once a
         week. 4 = less than once a week. 5 = never.

      ``wrkstat``
         a numeric vector for the respondent's work status. 1 = working
         full-time. 2 = working part-time. 3 = temporarily not working.
         4 = unemployed/laid off. 5 = retired. 6 = in school. 7 =
         house-keeping work. 8 = other.

      ``natspac``
         a numeric vector for attitudes toward spending on the space
         program. See details below for this variable and all other
         variables beginning with ``nat``.

      ``natenvir``
         a numeric vector for attitudes toward spending on
         improving/protecting the environment.

      ``natheal``
         a numeric vector for attitudes toward spending on
         improving/protecting the nation's health.

      ``natcity``
         a numeric vector for attitudes toward spending on solving the
         big city's problems.

      ``natcrime``
         a numeric vector for attitudes toward spending on halting the
         "rising crime rate." This question is subtly hilarious.

      ``natdrug``
         a numeric vector for attitudes toward spending on dealing with
         drug addiction.

      ``nateduc``
         a numeric vector for attitudes toward spending on improving the
         nation's education system.

      ``natrace``
         a numeric vector for attitudes toward spending on improving the
         condition of black people.

      ``natarms``
         a numeric vector for attitudes toward spending on the
         military/armaments/defense.

      ``nataid``
         a numeric vector for attitudes toward spending on foreign aid.

      ``natfare``
         a numeric vector for attitudes toward spending on welfare.

      ``natroad``
         a numeric vector for attitudes toward spending on highways and
         bridges.

      ``natsoc``
         a numeric vector for attitudes toward spending on social
         security.

      ``natmass``
         a numeric vector for attitudes toward spending on mass
         transportation.

      ``natpark``
         a numeric vector for attitudes toward spending on parks and
         recreation.

      ``natchld``
         a numeric vector for attitudes toward spending on assistance
         for child care.

      ``natsci``
         a numeric vector for attitudes toward spending on scientific
         research.

      ``natenrgy``
         a numeric vector for attitudes toward spending on alternative
         sources of energy.

      ``sumnat``
         a numeric vector for the sum total of responses to all the
         aforementioned spending variables (i.e. those that begin with
         ``nat``). This creates an interval-ish measure with a nice and
         mostly normal distribution.

      ``sumnatsoc``
         a numeric vector for the sum of all responses toward various
         "social" prompts (i.e. ``natenvir``, ``natheal``, ``natdrug``,
         ``nateduc``, ``natrace``, ``natfare``, ``natroad``,
         ``natmass``, ``natpark``, ``natsoc``, ``natchld``). This
         creates an interval-ish measure with a mostly normal (but small
         left skew) distribution.

      .. rubric:: Details
         :name: details

      For all the variables beginning with ``nat``, note that I rescaled
      the original data so that -1 = respondent thinks country is
      spending too much on this topic, 0 = respondent thinks country is
      spending "about (the) right" amount, and 1 = respondent thinks
      country is spending too little on this topic. I do this to
      facilitate reading each ``nat`` prompt as increasing support for
      more spending (the extent to which increasing values means the
      respondent thinks the country spends too little on a given
      prompt). I think this is more intuitive.

      Also, the ``natspac``, ``natenvir``, ``natheal``, ``natcity``,
      ``natcrime``, ``natdrug``, ``nateduc``, ``natrace``, ``natarms``,
      ``nataid``, and ``natfare`` have "alternate" prompts in later GSS
      waves in which a subset of respondents get a slightly different
      prompt. For example, one set of respondents for ``natcity`` gets a
      prompt of "Solving the problems of the big cities" (the legacy
      prompt) whereas another set of respondents gets a prompt of
      "Assistance to big cities" (typically noted as "version y" in the
      GSS). I, perhaps problematically if I were interested in
      publishing analyses on these data, combine both prompts into a
      single variable. I don't think it's a huge problem for what I want
      the data to do, but FYI.

      .. rubric:: Source
         :name: source

      General Social Survey, 2018
