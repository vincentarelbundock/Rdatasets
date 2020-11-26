============ ===============
gss_abortion R Documentation
============ ===============

Abortion Opinions in the General Social Survey
----------------------------------------------

Description
~~~~~~~~~~~

This is a toy data set derived from the General Social Survey that I
intend to use for several purposes. First, the battery of abortion items
can serve as toy data to illustrate mixed effects modeling as equivalent
to a one-parameter (Rasch) model. Second, I include some covariates to
also do some basic regressions. I think abortion opinions are useful
learning tools for statistical inference for college students. Third,
there's a time-series component as well for understanding how abortion
attitudes have changed over time.

Usage
~~~~~

::

   gss_abortion

Format
~~~~~~

A data frame with 64,814 observations on the following 18 variables.

``id``
   a unique respondent identifier

``year``
   the survey year

``age``
   the respondent's age in years

``race``
   the respondent's race, as character variable

``sex``
   the respondent's gender, as character variable

``hispaniccat``
   the respondent's Hispanic ethnicity, as character variable

``educ``
   how many years the respondent spent in school

``partyid``
   the respondent's party identification, as character variable

``relactiv``
   the self-reported religious activity of the respondent on a 1:11
   scale

``abany``
   a binary variable that equals 1 if the respondent thinks abortion
   should be legal for any reason. 0 indicates no support for abortion
   for any reason.

``abdefect``
   a numeric vector that equals 1 if the respondent thinks abortion
   should be legal if there is a serious defect in the fetus. 0
   indicates no support for abortion in this circumstance.

``abnomore``
   a numeric vector that equals 1 if the respondent thinks abortion
   should be legal if a woman is pregnant but wants no more children. 0
   indicates no support for abortion in this circumstance.

``abhlth``
   a numeric vector that equals 1 if the respondent thinks abortion
   should be legal if a pregnant woman's health is in danger. 0
   indicates no support for abortion in this circumstance.

``abpoor``
   a numeric vector that equals 1 if the respondent thinks abortion
   should be legal if a pregnant woman is poor and cannot afford more
   children. 0 indicates no support for abortion in this circumstance.

``abrape``
   a numeric vector that equals 1 if the respondent thinks abortion
   should be legal if the woman became pregnant because of a rape. 0
   indicates no support for abortion in this circumstance.

``absingle``
   a numeric vector that equals 1 if the respondent thinks abortion
   should be legal if a pregnant woman is single and does not want to
   marry the man who impregnated her. 0 indicates no support for
   abortion in this circumstance.

``pid``
   ``partyid`` recoded so that 7 = NA

``hispanic``
   a dummy variable that equals 1 if the respondent is any way Hispanic

Details
~~~~~~~

Data include all General Social Survey observations from 1972 to 2018
for these variables. Be mindful of missing data.
