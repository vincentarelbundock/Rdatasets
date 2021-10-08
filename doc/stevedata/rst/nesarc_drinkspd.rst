.. container::

   =============== ===============
   nesarc_drinkspd R Documentation
   =============== ===============

   .. rubric:: The Usual Daily Drinking Habits of Americans (NESARC,
      2001-2)
      :name: the-usual-daily-drinking-habits-of-americans-nesarc-2001-2

   .. rubric:: Description
      :name: description

   This toy data set is loosely modified from Wave I of the NESARC data
   set. Here, my main interest is the number of drinks consumed on a
   usual day drinking alcohol in the past 12 months, according to
   respondents in the nationally representative survey of 43,093
   Americans.

   .. rubric:: Usage
      :name: usage

   ::

      nesarc_drinkspd

   .. rubric:: Format
      :name: format

   A data frame with 43093 observations on the following 8 variables.

   ``idnum``
      a numeric vector and sequence from 1 to the number of rows in the
      data

   ``ethrace2a``
      a numeric vector for the ethnicity/race. 1 = White, not Hispanic.
      2 = Black, not Hispanic. 3 = AI/AN. 4 = Asian, Native Hawaiian,
      Pacific Islander. 5 = Hispanic or Latino.

   ``region``
      a numeric vector for the Census region. 1 = Northeast. 2 =
      Midwest. 3 = South. 4 = West

   ``age``
      a numeric vector for age in years

   ``sex``
      a numeric vector for sex. 1 = female. 0 = male

   ``marital``
      a numeric vector for marital status. 1 = married. 2 = living with
      someone as married. 3 = widowed. 4 = divorced. 5 = separated. 6 =
      never married

   ``educ``
      a numeric vector for education level, recoded from ``s1q6a`` in
      the original data. 1 = did not make it to/finish high school. 2 =
      high school graduate or equivalency. 3 = some college, but no
      four-year degree. 4 = four-year college degree or more.

   ``s2aq8b``
      a numeric vector for the number of drinks of any alcohol consumed
      on days drinking alcohol in the past 12 months. This variable is
      “as-is” from the original data set.

   .. rubric:: Details
      :name: details

   You will not want to use the ``s2aq8b`` variable without recoding it
   first. Those who cannot recall how much they typically drink (i.e.
   true “don't knows” or missing info) are coded as 99. Non-drinkers are
   coded as ``NA`` in the ``s2aq8b`` variable and should be recoded as
   0. Any value between 1 and 98 in the variable represents the, for
   lack of better term, “true” number of alcoholic drinks a respondent
   says s/he typically consumes on a day drinking alcohol in the past 12
   months, though this is evidently preposterous as a count variable. A
   person drinking 42 alcoholic drinks a day would not be alive to tell
   you they did this. The researcher may want to employ some sensible
   right censoring here.

   .. rubric:: Source
      :name: source

   National Epidemiologic Survey on Alcohol and Related Conditions
   (NESARC)—Wave 1 (2001–2002)
