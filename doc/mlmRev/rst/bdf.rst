.. container::

   === ===============
   bdf R Documentation
   === ===============

   .. rubric:: Language Scores of 8-Graders in The Netherlands
      :name: bdf

   .. rubric:: Description
      :name: description

   The ``bdf`` data frame has 2287 rows and 25 columns of language
   scores from grade 8 pupils in elementary schools in The Netherlands.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(bdf)

   .. rubric:: Format
      :name: format

   schoolNR
      a factor denoting the school.

   pupilNR
      a factor denoting the pupil.

   IQ.verb
      a numeric vector of verbal IQ scores

   IQ.perf
      a numeric vector of IQ scores.

   sex
      Sex of the student.

   Minority
      a factor indicating if the student is a member of a minority
      group.

   repeatgr
      an ordered factor indicating if one or more grades have been
      repeated.

   aritPRET
      a numeric vector

   classNR
      a numeric vector

   aritPOST
      a numeric vector

   langPRET
      a numeric vector

   langPOST
      a numeric vector

   ses
      a numeric vector of socioeconomic status indicators.

   denomina
      a factor indicating of the school is a public school, a Protestant
      private school, a Catholic private school, or a non-denominational
      private school.

   schoolSES
      a numeric vector

   satiprin
      a numeric vector

   natitest
      a factor with levels ``0`` and ``1``

   meetings
      a numeric vector

   currmeet
      a numeric vector

   mixedgra
      a factor indicating if the class is a mixed-grade class.

   percmino
      a numeric vector

   aritdiff
      a numeric vector

   homework
      a numeric vector

   classsiz
      a numeric vector

   groupsiz
      a numeric vector

   .. rubric:: References
      :name: references

   Snijders, Tom and Bosker, Roel (1999) *Multilevel Analysis: An
   Introduction to Basic and Advanced Multilevel Modeling*, Sage.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      summary(bdf)
