.. container::

   .. container::

      ========= ===============
      wvs_immig R Documentation
      ========= ===============

      .. rubric:: Attitudes about Immigration in the World Values Survey
         :name: attitudes-about-immigration-in-the-world-values-survey

      .. rubric:: Description
         :name: description

      A data set on attitudes about immigration for all observations in
      the third to sixth wave of the World Values Survey. I use these
      data for in-class illustration.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         wvs_immig

      .. rubric:: Format
         :name: format

      A data frame with 310,388 observations on the following 6
      variables.

      ``s002``
         the World Values Survey wave

      ``s003``
         the World Values Survey country code

      ``country``
         the country name

      ``s020``
         the survey year

      ``uid``
         a unique identifier for the survey respondent

      ``e143``
         an attitude about immigration policy in the World Values Survey

      .. rubric:: Details
         :name: details

      1 = "let anyone come". 2 = "as long as jobs are available". 3 =
      "strict limits". 4 = "Prohibit people from coming" for the
      ``e143`` variable. See ``?wvs_ccodes`` for more information about
      naming/identifying countries.
