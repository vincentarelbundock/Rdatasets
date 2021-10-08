.. container::

   ==================== ===============
   politicalInformation R Documentation
   ==================== ===============

   .. rubric:: Interviewer ratings of respondent levels of political
      information
      :name: interviewer-ratings-of-respondent-levels-of-political-information

   .. rubric:: Description
      :name: description

   Interviewers administering the 2000 American National Election
   Studies assigned an ordinal rating to each respondent's "general
   level of information" about politics and public affairs.

   .. rubric:: Usage
      :name: usage

   ::

      data(politicalInformation)

   .. rubric:: Format
      :name: format

   A data frame with 1807 observations on the following 8 variables.

   ``y``
      interviewer rating, a factor with levels ``Very Low``
      ``Fairly Low`` ``Average`` ``Fairly High`` ``Very High``

   ``collegeDegree``
      a factor with levels ``No`` ``Yes``

   ``female``
      a factor with levels ``No`` ``Yes``

   ``age``
      a numeric vector, respondent age in years

   ``homeOwn``
      a factor with levels ``No`` ``Yes``

   ``govt``
      a factor with levels ``No`` ``Yes``

   ``length``
      a numeric vector, length of ANES pre-election interview in minutes

   ``id``
      a factor, unique identifier for each interviewer

   .. rubric:: Details
      :name: details

   Seven respondents have missing data on the ordinal interviewer
   rating. The covariates ``age`` and ``length`` also have some missing
   data.

   .. rubric:: Source
      :name: source

   The National Election Studies (www.electionstudies.org). THE 2000
   NATIONAL ELECTION STUDY [dataset]. Ann Arbor, MI: University of
   Michigan, Center for Political Studies [producer and distributor].

   .. rubric:: References
      :name: references

   Jackman, Simon. 2009. *Bayesian Analysis for the Social Sciences*.
   Wiley: Hoboken, New Jersey.

   .. rubric:: Examples
      :name: examples

   ::

      data(politicalInformation)

      table(politicalInformation$y,exclude=NULL)

      op <- MASS::polr(y ~ collegeDegree + female + log(age) + homeOwn + govt + log(length),
                 data=politicalInformation,
                 Hess=TRUE,
                 method="probit")
