.. container::

   ==== ===============
   Exam R Documentation
   ==== ===============

   .. rubric:: Exam scores from inner London
      :name: Exam

   .. rubric:: Description
      :name: description

   Exam scores of 4,059 students from 65 schools in Inner London.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(Exam)

   .. rubric:: Format
      :name: format

   A data frame with 4059 observations on the following 9 variables.

   school
      School ID - a factor.

   normexam
      Normalized exam score.

   schgend
      School gender - a factor. Levels are ``mixed``, ``boys``, and
      ``girls``.

   schavg
      School average of intake score.

   vr
      Student level Verbal Reasoning (VR) score band at intake - a
      factor. Levels are ``bottom 25%``, ``mid 50%``, and ``top 25%``.

   intake
      Band of student's intake score - a factor. Levels are
      ``bottom 25%``, ``mid 50%`` and ``top 25%``./

   standLRT
      Standardised LR test score.

   sex
      Sex of the student - levels are ``F`` and ``M``.

   type
      School type - levels are ``Mxd`` and ``Sngl``.

   student
      Student id (within school) - a factor

   .. rubric:: Source
      :name: source

   http://www.bristol.ac.uk/cmm/learning/mmsoftware/data-rev.html

   .. rubric:: References
      :name: references

   Goldstein, H., Rasbash, J., et al (1993). A multilevel analysis of
   school examination results. *Oxford Review of Education* 19: 425-433

   .. rubric:: Examples
      :name: examples

   .. code:: R

      str(Exam)
      summary(Exam)
      (fm1 <- lmer(normexam ~ standLRT + sex + schgend + (1|school), Exam))
      (fm2 <- lmer(normexam ~ standLRT*sex + schgend + (1|school), Exam))
      (fm3 <- lmer(normexam ~ standLRT*sex + schgend + (1|school), Exam))
