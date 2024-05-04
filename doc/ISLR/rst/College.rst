.. container::

   .. container::

      ======= ===============
      College R Documentation
      ======= ===============

      .. rubric:: U.S. News and World Report's College Data
         :name: u.s.-news-and-world-reports-college-data

      .. rubric:: Description
         :name: description

      Statistics for a large number of US Colleges from the 1995 issue
      of US News and World Report.

      .. rubric:: Usage
         :name: usage

      ::

         College

      .. rubric:: Format
         :name: format

      A data frame with 777 observations on the following 18 variables.

      ``Private``
         A factor with levels ``No`` and ``Yes`` indicating private or
         public university

      ``Apps``
         Number of applications received

      ``Accept``
         Number of applications accepted

      ``Enroll``
         Number of new students enrolled

      ``Top10perc``
         Pct. new students from top 10% of H.S. class

      ``Top25perc``
         Pct. new students from top 25% of H.S. class

      ``F.Undergrad``
         Number of fulltime undergraduates

      ``P.Undergrad``
         Number of parttime undergraduates

      ``Outstate``
         Out-of-state tuition

      ``Room.Board``
         Room and board costs

      ``Books``
         Estimated book costs

      ``Personal``
         Estimated personal spending

      ``PhD``
         Pct. of faculty with Ph.D.'s

      ``Terminal``
         Pct. of faculty with terminal degree

      ``S.F.Ratio``
         Student/faculty ratio

      ``perc.alumni``
         Pct. alumni who donate

      ``Expend``
         Instructional expenditure per student

      ``Grad.Rate``
         Graduation rate

      .. rubric:: Source
         :name: source

      This dataset was taken from the StatLib library which is
      maintained at Carnegie Mellon University. The dataset was used in
      the ASA Statistical Graphics Section's 1995 Data Analysis
      Exposition.

      .. rubric:: References
         :name: references

      James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
      Introduction to Statistical Learning with applications in R*,
      https://www.statlearning.com, Springer-Verlag, New York

      .. rubric:: Examples
         :name: examples

      ::

         summary(College)
         lm(Apps~Private+Accept,data=College)
