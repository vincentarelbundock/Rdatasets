.. container::

   =========== ===============
   MathAchieve R Documentation
   =========== ===============

   .. rubric:: Mathematics achievement scores
      :name: mathematics-achievement-scores

   .. rubric:: Description
      :name: description

   The ``MathAchieve`` data frame has 7185 rows and 6 columns.

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   School
      an ordered factor identifying the school that the student attends

   Minority
      a factor with levels ``No`` ``Yes`` indicating if the student is a
      member of a minority racial group.

   Sex
      a factor with levels ``Male`` ``Female``

   SES
      a numeric vector of socio-economic status.

   MathAch
      a numeric vector of mathematics achievement scores.

   MEANSES
      a numeric vector of the mean SES for the school.

   .. rubric:: Details
      :name: details

   Each row in this data frame contains the data for one student.

   .. rubric:: Examples
      :name: examples

   ::

      summary(MathAchieve)
