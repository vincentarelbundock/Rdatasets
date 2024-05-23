.. container::

   .. container::

      ========= ===============
      MASchools R Documentation
      ========= ===============

      .. rubric:: Massachusetts Test Score Data
         :name: massachusetts-test-score-data

      .. rubric:: Description
         :name: description

      The dataset contains data on test performance, school
      characteristics and student demographic backgrounds for school
      districts in Massachusetts.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("MASchools")

      .. rubric:: Format
         :name: format

      A data frame containing 220 observations on 16 variables.

      district
         character. District code.

      municipality
         character. Municipality name.

      expreg
         Expenditures per pupil, regular.

      expspecial
         Expenditures per pupil, special needs.

      expbil
         Expenditures per pupil, bilingual.

      expocc
         Expenditures per pupil, occupational.

      exptot
         Expenditures per pupil, total.

      scratio
         Students per computer.

      special
         Special education students (per cent).

      lunch
         Percent qualifying for reduced-price lunch.

      stratio
         Student-teacher ratio.

      income
         Per capita income.

      score4
         4th grade score (math + English + science).

      score8
         8th grade score (math + English + science).

      salary
         Average teacher salary.

      english
         Percent of English learners.

      .. rubric:: Details
         :name: details

      The Massachusetts data are district-wide averages for public
      elementary school districts in 1998. The test score is taken from
      the Massachusetts Comprehensive Assessment System (MCAS) test,
      administered to all fourth graders in Massachusetts public schools
      in the spring of 1998. The test is sponsored by the Massachusetts
      Department of Education and is mandatory for all public schools.
      The data analyzed here are the overall total score, which is the
      sum of the scores on the English, Math, and Science portions of
      the test. Data on the student-teacher ratio, the percent of
      students receiving a subsidized lunch and on the percent of
      students still learning english are averages for each elementary
      school district for the 1997–1998 school year and were obtained
      from the Massachusetts department of education. Data on average
      district income are from the 1990 US Census.

      .. rubric:: Source
         :name: source

      Online complements to Stock and Watson (2007).

      .. rubric:: References
         :name: references

      Stock, J. H. and Watson, M. W. (2007). *Introduction to
      Econometrics*, 2nd ed. Boston: Addison Wesley.

      .. rubric:: See Also
         :name: see-also

      ``StockWatson2007``, ``CASchools``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Massachusetts
         data("MASchools")

         ## compare with California
         data("CASchools")
         CASchools$stratio <- with(CASchools, students/teachers)
         CASchools$score4 <- with(CASchools, (math + read)/2)

         ## Stock and Watson, parts of Table 9.1, p. 330
         vars <- c("score4", "stratio", "english", "lunch", "income")
         cbind(
           CA_mean = sapply(CASchools[, vars], mean),
           CA_sd   = sapply(CASchools[, vars], sd),
           MA_mean = sapply(MASchools[, vars], mean),
           MA_sd   = sapply(MASchools[, vars], sd))

         ## Stock and Watson, Table 9.2, p. 332, col. (1)
         fm1 <- lm(score4 ~ stratio, data = MASchools)
         coeftest(fm1, vcov = vcovHC(fm1, type = "HC1"))

         ## More examples, notably the entire Table 9.2, can be found in:
         ## help("StockWatson2007")
