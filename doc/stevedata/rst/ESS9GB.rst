.. container::

   ====== ===============
   ESS9GB R Documentation
   ====== ===============

   .. rubric:: British Attitudes Toward Immigration (2018-19)
      :name: british-attitudes-toward-immigration-2018-19

   .. rubric:: Description
      :name: description

   This is a replication data originally set to accompany a blog post
   and presentation to students at the University of Nottingham in March
   2020. However, COVID-19 led to the cancellation of the talk.

   .. rubric:: Usage
      :name: usage

   ::

      ESS9GB

   .. rubric:: Format
      :name: format

   A data frame with 1,905 observations on the following 19 variables.

   ``name``
      a character for the name of the survey

   ``essround``
      a numeric for the ESS round

   ``edition``
      a character for the particular edition of the ESS round

   ``idno``
      a numeric/unique identifier

   ``cntry``
      a character vector for the country (i.e. the UK)

   ``region``
      a character vector for the region of the UK the respondent lives

   ``brncntr``
      a numeric vector for if the respondent was born in the UK

   ``stintrvw``
      a Date for the interview start date

   ``endintrvw``
      a Date for the interview end date

   ``imbgeco``
      a numeric vector for if respondent thinks immigrants are generally
      good or bad for UK's economy. Higher values = good

   ``imueclt``
      a numeric vector for if respondent thinks immigrants enrich or
      undermine UK's culture. Higher values = enrich more than undermine

   ``imwbcnt``
      a numeric vector for if respondent thinks immigrants make UK a
      better place to live. Higher values = better place to live

   ``immigsent``
      a numeric vector for immigration sentiment (i.e. ``imbgeco`` +
      ``imueclt`` + ``imwbcnt``). Higher values = more pro-immigration
      sentiment

   ``agea``
      a numeric vector for the respondent's age in years

   ``female``
      a numeric vector for whether the respondent is a woman

   ``eduyrs``
      a numeric vector for total years of education for the respondent

   ``uempla``
      a numeric vector for whether the respondent is currently
      unemployed but seeking work

   ``hinctnta``
      a numeric vector for household income in deciles

   ``lrscale``
      a numeric vector for the ideology of the respondent on an 11-point
      [0:10] scale

   .. rubric:: Details
      :name: details

   See accompanying blog post at
   http://svmiller.com/blog/2020/03/what-explains-british-attitudes-toward-immigration-a-pedagogical-example/.

   .. rubric:: Source
      :name: source

   European Social Survey, Round 9
