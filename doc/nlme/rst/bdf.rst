.. container::

   === ===============
   bdf R Documentation
   === ===============

   .. rubric:: Language scores
      :name: bdf

   .. rubric:: Description
      :name: description

   The ``bdf`` data frame has 2287 rows and 25 columns of language
   scores from grade 8 pupils in elementary schools in The Netherlands.

   .. rubric:: Usage
      :name: usage

   ::

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

   .. rubric:: Source
      :name: source

   ‘⁠http://stat.gamma.rug.nl/snijders/multilevel.htm⁠’, the first
   edition of http://www.stats.ox.ac.uk/~snijders/mlbook.htm.

   .. rubric:: References
      :name: references

   Snijders, Tom and Bosker, Roel (1999), *Multilevel Analysis: An
   Introduction to Basic and Advanced Multilevel Modeling*, Sage.

   .. rubric:: Examples
      :name: examples

   ::

      summary(bdf)

      ## More examples, including lme() fits  reproducing parts in the above
      ## book, are available in the R script files
      system.file("mlbook", "ch04.R", package ="nlme") # and
      system.file("mlbook", "ch05.R", package ="nlme")
