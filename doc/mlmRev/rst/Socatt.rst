.. container::

   .. container::

      ====== ===============
      Socatt R Documentation
      ====== ===============

      .. rubric:: Social Attitudes Survey
         :name: social-attitudes-survey

      .. rubric:: Description
         :name: description

      These data come from the British Social Attitudes (BSA) Survey
      started in 1983. The eligible persons were all adults aged 18 or
      over living in private households in Britain. The data consist of
      completed results of 264 respondents out of 410.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Socatt)

      .. rubric:: Format
         :name: format

      A data frame with 1056 observations on the following 9 variables.

      district
         District ID - a factor

      respond
         Respondent code (within district) - a factor

      year
         A factor with levels ``1983``, ``1984``, ``1985``, and ``1986``

      numpos
         An ordered factor giving the number of positive answers to
         seven questions.

      party
         Political party chosen - a factor. Levels are ``conservative``,
         ``labour``, ``Lib/SDP/Alliance``, ``others``, and ``none``.

      class
         Self assessed social class - a factor. Levels are ``middle``,
         ``upper working``, and ``lower working``.

      gender
         Respondent's sex. (1=male, 2=female)

      age
         Age in years

      religion
         Religion - a factor. Levels are ``Roman Catholic``,
         ``Protestant/Church of England``, ``others``, and ``none``.

      .. rubric:: Details
         :name: details

      These data are provided as an example of multilevel data with a
      multinomial response.

      .. rubric:: Source
         :name: source

      http://www.bristol.ac.uk/cmm/learning/mmsoftware/data-rev.html

      .. rubric:: References
         :name: references

      McGrath, K. and Waterton, J. (1986). *British Social Attitudes
      1983-1986 panel survey.* London, Social and Community Planning
      Research.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         str(Socatt)
         summary(Socatt)
