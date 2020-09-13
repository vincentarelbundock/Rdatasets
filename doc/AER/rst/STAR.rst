==== ===============
STAR R Documentation
==== ===============

Project STAR: Student-Teacher Achievement Ratio
-----------------------------------------------

Description
~~~~~~~~~~~

The Project STAR public access data set, assessing the effect of
reducing class size on test scores in the early grades.

Usage
~~~~~

::

   data("STAR")

Format
~~~~~~

A data frame containing 11,598 observations on 47 variables.

gender
   factor indicating student's gender.

ethnicity
   factor indicating student's ethnicity with levels ``"cauc"``
   (Caucasian), ``"afam"`` (African-American), ``"asian"`` (Asian),
   ``"hispanic"`` (Hispanic), ``"amindian"`` (American-Indian) or
   ``"other"``.

birth
   student's birth quarter (of class ``yearqtr``).

stark
   factor indicating the STAR class type in kindergarten: regular,
   small, or regular-with-aide. ``NA`` indicates that no STAR class was
   attended.

star1
   factor indicating the STAR class type in 1st grade: regular, small,
   or regular-with-aide. ``NA`` indicates that no STAR class was
   attended.

star2
   factor indicating the STAR class type in 2nd grade: regular, small,
   or regular-with-aide. ``NA`` indicates that no STAR class was
   attended.

star3
   factor indicating the STAR class type in 3rd grade: regular, small,
   or regular-with-aide. ``NA`` indicates that no STAR class was
   attended.

readk
   total reading scaled score in kindergarten.

read1
   total reading scaled score in 1st grade.

read2
   total reading scaled score in 2nd grade.

read3
   total reading scaled score in 3rd grade.

mathk
   total math scaled score in kindergarten.

math1
   total math scaled score in 1st grade.

math2
   total math scaled score in 2nd grade.

math3
   total math scaled score in 3rd grade.

lunchk
   factor indicating whether the student qualified for free lunch in
   kindergarten.

lunch1
   factor indicating whether the student qualified for free lunch in 1st
   grade.

lunch2
   factor indicating whether the student qualified for free lunch in 2nd
   grade.

lunch3
   factor indicating whether the student qualified for free lunch in 3rd
   grade.

schoolk
   factor indicating school type in kindergarten: ``"inner-city"``,
   ``"suburban"``, ``"rural"`` or ``"urban"``.

school1
   factor indicating school type in 1st grade: ``"inner-city"``,
   ``"suburban"``, ``"rural"`` or ``"urban"``.

school2
   factor indicating school type in 2nd grade: ``"inner-city"``,
   ``"suburban"``, ``"rural"`` or ``"urban"``.

school3
   factor indicating school type in 3rd grade: ``"inner-city"``,
   ``"suburban"``, ``"rural"`` or ``"urban"``.

degreek
   factor indicating highest degree of kindergarten teacher:
   ``"bachelor"``, ``"master"``, ``"specialist"``, or ``"master+"``.

degree1
   factor indicating highest degree of 1st grade teacher:
   ``"bachelor"``, ``"master"``, ``"specialist"``, or ``"phd"``.

degree2
   factor indicating highest degree of 2nd grade teacher:
   ``"bachelor"``, ``"master"``, ``"specialist"``, or ``"phd"``.

degree3
   factor indicating highest degree of 3rd grade teacher:
   ``"bachelor"``, ``"master"``, ``"specialist"``, or ``"phd"``.

ladderk
   factor indicating teacher's career ladder level in kindergarten:
   ``"level1"``, ``"level2"``, ``"level3"``, ``"apprentice"``,
   ``"probation"`` or ``"pending"``.

ladder1
   factor indicating teacher's career ladder level in 1st grade:
   ``"level1"``, ``"level2"``, ``"level3"``, ``"apprentice"``,
   ``"probation"`` or ``"noladder"``.

ladder2
   factor indicating teacher's career ladder level in 2nd grade:
   ``"level1"``, ``"level2"``, ``"level3"``, ``"apprentice"``,
   ``"probation"`` or ``"noladder"``.

ladder3
   factor indicating teacher's career ladder level in 3rd grade:
   ``"level1"``, ``"level2"``, ``"level3"``, ``"apprentice"``,
   ``"probation"`` or ``"noladder"``.

experiencek
   years of teacher's total teaching experience in kindergarten.

experience1
   years of teacher's total teaching experience in 1st grade.

experience2
   years of teacher's total teaching experience in 2nd grade.

experience3
   years of teacher's total teaching experience in 3rd grade.

tethnicityk
   factor indicating teacher's ethnicity in kindergarten with levels
   ``"cauc"`` (Caucasian) or ``"afam"`` (African-American).

tethnicity1
   factor indicating teacher's ethnicity in 1st grade with levels
   ``"cauc"`` (Caucasian) or ``"afam"`` (African-American).

tethnicity2
   factor indicating teacher's ethnicity in 2nd grade with levels
   ``"cauc"`` (Caucasian) or ``"afam"`` (African-American).

tethnicity3
   factor indicating teacher's ethnicity in 3rd grade with levels
   ``"cauc"`` (Caucasian), ``"afam"`` (African-American), or ``"asian"``
   (Asian).

systemk
   factor indicating school system ID in kindergarten.

system1
   factor indicating school system ID in 1st grade.

system2
   factor indicating school system ID in 2nd grade.

system3
   factor indicating school system ID in 3rd grade.

schoolidk
   factor indicating school ID in kindergarten.

schoolid1
   factor indicating school ID in 1st grade.

schoolid2
   factor indicating school ID in 2nd grade.

schoolid3
   factor indicating school ID in 3rd grade.

Details
~~~~~~~

Project STAR (Student/Teacher Achievement Ratio) was a four-year
longitudinal class-size study funded by the Tennessee General Assembly
and conducted in the late 1980s by the State Department of Education.
Over 7,000 students in 79 schools were randomly assigned into one of
three interventions: small class (13 to 17 students per teacher),
regular class (22 to 25 students per teacher), and regular-with-aide
class (22 to 25 students with a full-time teacher's aide). Classroom
teachers were also randomly assigned to the classes they would teach.
The interventions were initiated as the students entered school in
kindergarten and continued through third grade.

The Project STAR public access data set contains data on test scores,
treatment groups, and student and teacher characteristics for the four
years of the experiment, from academic year 1985–1986 to academic year
1988–1989. The test score data analyzed in this chapter are the sum of
the scores on the math and reading portion of the Stanford Achievement
Test.

Stock and Watson (2007) obtained the data set from the Project STAR Web
site.

The data is provided in wide format. Reshaping it into long format is
illustrated below. Note that the levels of the ``degree``, ``ladder``
and ``tethnicity`` variables differ slightly between kindergarten and
higher grades.

Source
~~~~~~

Online complements to Stock and Watson (2007).

References
~~~~~~~~~~

Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*, 2nd
ed. Boston: Addison Wesley.

See Also
~~~~~~~~

``StockWatson2007``

Examples
~~~~~~~~

::

   data("STAR")

   ## Stock and Watson, p. 488
   fmk <- lm(I(readk + mathk) ~ stark, data = STAR)
   fm1 <- lm(I(read1 + math1) ~ star1, data = STAR)
   fm2 <- lm(I(read2 + math2) ~ star2, data = STAR)
   fm3 <- lm(I(read3 + math3) ~ star3, data = STAR)

   coeftest(fm3, vcov = sandwich)
   plot(I(read3 + math3) ~ star3, data = STAR)

   ## Stock and Watson, p. 489
   fmke <- lm(I(readk + mathk) ~ stark + experiencek, data = STAR)
   coeftest(fmke, vcov = sandwich)

   ## reshape data from wide into long format
   ## 1. variables and their levels
   nam <- c("star", "read", "math", "lunch", "school", "degree", "ladder",
     "experience", "tethnicity", "system", "schoolid")
   lev <- c("k", "1", "2", "3")
   ## 2. reshaping
   star <- reshape(STAR, idvar = "id", ids = row.names(STAR),
     times = lev, timevar = "grade", direction = "long",
     varying = lapply(nam, function(x) paste(x, lev, sep = "")))
   ## 3. improve variable names and type
   names(star)[5:15] <- nam
   star$id <- factor(star$id)
   star$grade <- factor(star$grade, levels = lev, labels = c("kindergarten", "1st", "2nd", "3rd"))
   rm(nam, lev)

   ## fit a single model nested in grade (equivalent to fmk, fm1, fm2, fmk)
   fm <- lm(I(read + math) ~ 0 + grade/star, data = star)
   coeftest(fm, vcov = sandwich)

   ## visualization
   library("lattice")
   bwplot(I(read + math) ~ star | grade, data = star)
