.. container::

   ========= ===============
   SocGrades R Documentation
   ========= ===============

   .. rubric:: Grades in a Sociology Course
      :name: SocGrades

   .. rubric:: Description
      :name: description

   The data set ``SocGrades`` contains four outcome measures on student
   performance in an introductory sociology course together with six
   potential predictors. These data were used by Marascuilo and Levin
   (1983) for an example of canonical correlation analysis, but are also
   suitable as examples of multivariate multiple regression, MANOVA,
   MANCOVA and step-down analysis in multivariate linear models.

   .. rubric:: Usage
      :name: usage

   ::

      data(SocGrades)

   .. rubric:: Format
      :name: format

   A data frame with 40 observations on the following 10 variables.

   ``class``
      Social class, an ordered factor with levels ``1`` > ``2`` > ``3``

   ``sex``
      sex, a factor with levels ``F`` ``M``

   ``gpa``
      grade point average

   ``boards``
      College Board test scores

   ``hssoc``
      previous high school unit in sociology, a factor with 2 ``no``,
      ``yes``

   ``pretest``
      score on course pretest

   ``midterm1``
      score on first midterm exam

   ``midterm2``
      score on second midterm exam

   ``final``
      score on final exam

   ``eval``
      course evaluation

   .. rubric:: Details
      :name: details

   ``midterm1``, ``midterm2``, ``final``, and possibly ``eval`` are the
   response variables. All other variables are potential predictors.

   The factors ``class``, ``sex``, and ``hssoc`` can be used with
   ``as.numeric`` in correlational analyses.

   .. rubric:: Source
      :name: source

   Marascuilo, L. A. and Levin, J. R. (1983). *Multivariate Statistics
   in the Social Sciences* Monterey, CA: Brooks/Cole, Table 5-1, p. 192.

   .. rubric:: Examples
      :name: examples

   ::

      data(SocGrades)
      # basic MLM
      grades.mod <- lm(cbind(midterm1, midterm2, final, eval) ~ 
          class + sex + gpa + boards + hssoc + pretest, data=SocGrades)
          
      Anova(grades.mod, test="Roy")

      clr <- c("red", "blue", "darkgreen", "magenta", "brown", "black", "darkgray")
      heplot(grades.mod, col=clr)
      pairs(grades.mod, col=clr)

      ## Not run: 
      heplot3d(grades.mod, col=clr, wire=FALSE)

      ## End(Not run)

      if (require(candisc)) {
          # calculate canonical results for all terms
          grades.can <- candiscList(grades.mod)
          # extract canonical R^2s
          unlist(lapply(grades.can, function(x) x$canrsq))
          # plot class effect in canonical space
          heplot(grades.can, term="class", scale=4)   

          # 1 df terms: show canonical scores and weights for responses
          plot(grades.can, term="sex")
          plot(grades.can, term="gpa")
          plot(grades.can, term="boards")
          }
