.. container::

   .. container::

      ========= ===============
      CASchools R Documentation
      ========= ===============

      .. rubric:: California Test Score Data
         :name: california-test-score-data

      .. rubric:: Description
         :name: description

      The dataset contains data on test performance, school
      characteristics and student demographic backgrounds for school
      districts in California.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("CASchools")

      .. rubric:: Format
         :name: format

      A data frame containing 420 observations on 14 variables.

      district
         character. District code.

      school
         character. School name.

      county
         factor indicating county.

      grades
         factor indicating grade span of district.

      students
         Total enrollment.

      teachers
         Number of teachers.

      calworks
         Percent qualifying for CalWorks (income assistance).

      lunch
         Percent qualifying for reduced-price lunch.

      computer
         Number of computers.

      expenditure
         Expenditure per student.

      income
         District average income (in USD 1,000).

      english
         Percent of English learners.

      read
         Average reading score.

      math
         Average math score.

      .. rubric:: Details
         :name: details

      The data used here are from all 420 K-6 and K-8 districts in
      California with data available for 1998 and 1999. Test scores are
      on the Stanford 9 standardized test administered to 5th grade
      students. School characteristics (averaged across the district)
      include enrollment, number of teachers (measured as “full-time
      equivalents”, number of computers per classroom, and expenditures
      per student. Demographic variables for the students are averaged
      across the district. The demographic variables include the
      percentage of students in the public assistance program CalWorks
      (formerly AFDC), the percentage of students that qualify for a
      reduced price lunch, and the percentage of students that are
      English learners (that is, students for whom English is a second
      language).

      .. rubric:: Source
         :name: source

      Online complements to Stock and Watson (2007).

      .. rubric:: References
         :name: references

      Stock, J. H. and Watson, M. W. (2007). *Introduction to
      Econometrics*, 2nd ed. Boston: Addison Wesley.

      .. rubric:: See Also
         :name: see-also

      ``StockWatson2007``, ``MASchools``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## data and transformations
         data("CASchools")
         CASchools$stratio <- with(CASchools, students/teachers)
         CASchools$score <- with(CASchools, (math + read)/2)

         ## Stock and Watson (2007)
         ## p. 152
         fm1 <- lm(score ~ stratio, data = CASchools)
         coeftest(fm1, vcov = sandwich)

         ## p. 159
         fm2 <- lm(score ~ I(stratio < 20), data = CASchools)
         ## p. 199
         fm3 <- lm(score ~ stratio + english, data = CASchools)
         ## p. 224
         fm4 <- lm(score ~ stratio + expenditure + english, data = CASchools)

         ## Table 7.1, p. 242 (numbers refer to columns)
         fmc3 <- lm(score ~ stratio + english + lunch, data = CASchools)
         fmc4 <- lm(score ~ stratio + english + calworks, data = CASchools)
         fmc5 <- lm(score ~ stratio + english + lunch + calworks, data = CASchools)

         ## More examples can be found in:
         ## help("StockWatson2007")
