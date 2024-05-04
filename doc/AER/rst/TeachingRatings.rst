.. container::

   .. container::

      =============== ===============
      TeachingRatings R Documentation
      =============== ===============

      .. rubric:: Impact of Beauty on Instructor's Teaching Ratings
         :name: impact-of-beauty-on-instructors-teaching-ratings

      .. rubric:: Description
         :name: description

      Data on course evaluations, course characteristics, and professor
      characteristics for 463 courses for the academic years 2000–2002
      at the University of Texas at Austin.

      .. rubric:: Usage
         :name: usage

      ::

         data("TeachingRatings")

      .. rubric:: Format
         :name: format

      A data frame containing 463 observations on 13 variables.

      minority
         factor. Does the instructor belong to a minority
         (non-Caucasian)?

      age
         the professor's age.

      gender
         factor indicating instructor's gender.

      credits
         factor. Is the course a single-credit elective (e.g., yoga,
         aerobics, dance)?

      beauty
         rating of the instructor's physical appearance by a panel of
         six students, averaged across the six panelists, shifted to
         have a mean of zero.

      eval
         course overall teaching evaluation score, on a scale of 1 (very
         unsatisfactory) to 5 (excellent).

      division
         factor. Is the course an upper or lower division course? (Lower
         division courses are mainly large freshman and sophomore
         courses)?

      native
         factor. Is the instructor a native English speaker?

      tenure
         factor. Is the instructor on tenure track?

      students
         number of students that participated in the evaluation.

      allstudents
         number of students enrolled in the course.

      prof
         factor indicating instructor identifier.

      .. rubric:: Details
         :name: details

      A sample of student instructional ratings for a group of
      university teachers along with beauty rating (average from six
      independent judges) and a number of other characteristics.

      .. rubric:: Source
         :name: source

      The data were provided by Prof. Hamermesh. The first 8 variables
      are also available in the online complements to Stock and Watson
      (2007) at

      .. rubric:: References
         :name: references

      Hamermesh, D.S., and Parker, A. (2005). Beauty in the Classroom:
      Instructors' Pulchritude and Putative Pedagogical Productivity.
      *Economics of Education Review*, **24**, 369–376.

      Stock, J.H. and Watson, M.W. (2007). *Introduction to
      Econometrics*, 2nd ed. Boston: Addison Wesley.

      .. rubric:: See Also
         :name: see-also

      ``StockWatson2007``

      .. rubric:: Examples
         :name: examples

      ::

         data("TeachingRatings", package = "AER")

         ## evaluation score vs. beauty
         plot(eval ~ beauty, data = TeachingRatings)
         fm <- lm(eval ~ beauty, data = TeachingRatings)
         abline(fm)
         summary(fm)

         ## prediction of Stock & Watson's evaluation score
         sw <- with(TeachingRatings, mean(beauty) + c(0, 1) * sd(beauty))
         names(sw) <- c("Watson", "Stock")
         predict(fm, newdata = data.frame(beauty = sw))

         ## Hamermesh and Parker, 2005, Table 3
         fmw <- lm(eval ~ beauty + gender + minority + native + tenure + division + credits,
           weights = students, data = TeachingRatings)
         coeftest(fmw, vcov = vcovCL, cluster = TeachingRatings$prof)
