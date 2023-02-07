.. container::

   ======= ===============
   ESS10NO R Documentation
   ======= ===============

   .. rubric:: Norwegian Attitudes toward European Integration
      (2021-2022)
      :name: norwegian-attitudes-toward-european-integration-2021-2022

   .. rubric:: Description
      :name: description

   This is a simple data set to illustrate the use of sampling weights
   from the European Social Survey.

   .. rubric:: Usage
      :name: usage

   ::

      ESS10NO

   .. rubric:: Format
      :name: format

   A data frame with 1,411 observations on the following 24 variables.

   ``cntry``
      a character vector with Norway's two-character ISO code

   ``idno``
      a numeric identifier for the individual respondent

   ``region``
      a character for one of six regions recorded by the European Social
      Survey

   ``inwds``
      a date-time vector for the start of the interview

   ``inwde``
      a date-time vector for the end of the interview

   ``dweight``
      a design weight

   ``pspwght``
      a post-stratification weight, including the design weight

   ``pweight``
      a population size weight

   ``anweight``
      an analaysis weight

   ``prob``
      the sampling probability

   ``stratum``
      the sampling stratum

   ``psu``
      the primary sampling unit

   ``eu_vote``
      a character vector indicating how a respondent would vote if given
      a vote on joining the European Union

   ``brnnorge``
      a dummy variable indicating whether respondent was born in Norway
      or not

   ``agea``
      a numeric vector for the respondent's age in years

   ``imbgeco``
      a numeric vector for if respondent thinks immigrants are generally
      good or bad for Norway's economy. Higher values = good

   ``imueclt``
      a numeric vector for if respondent thinks immigrants enrich or
      undermine Norway's culture. Higher values = enrich more than
      undermine

   ``imwbcnt``
      a numeric vector for if respondent thinks immigrants make Norway a
      better place to live. Higher values = better place to live

   ``female``
      a numeric vector for whether the respondent is a woman

   ``eduyrs``
      a numeric vector for total years of education for the respondent

   ``uempla``
      a numeric vector for whether the respondent is currently
      unemployed but seeking work

   ``polint``
      a dummy variable indicating political interest. 1 = very or quite
      interested. 0 = hardly or not at all interested.

   ``hinctnta``
      a numeric vector for household income in deciles

   ``lrscale``
      a numeric vector for the ideology of the respondent on an 11-point
      [0:10] scale

   .. rubric:: Details
      :name: details

   You'll want to convert the ``eu_vote`` variable into something
   usable. Possible values include "Remain Outside", "Join EU", "Don't
   Know", "Not Eligible", "Blank Ballot", "Refuse to Answer", "Wouldn't
   Vote". Perhaps it's reasonable to make this a dummy variable
   comparing those who want to join versus those who want Norway to
   remain outside the European Union.

   The data are edition 2.2 of the 10th round of European Social Survey,
   which was released for public consumption on 21 December 2022.

   .. rubric:: Source
      :name: source

   European Social Survey, Round 10
