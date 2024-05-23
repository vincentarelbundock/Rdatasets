.. container::

   .. container::

      =============== ===============
      CollegeDistance R Documentation
      =============== ===============

      .. rubric:: College Distance Data
         :name: college-distance-data

      .. rubric:: Description
         :name: description

      Cross-section data from the High School and Beyond survey
      conducted by the Department of Education in 1980, with a follow-up
      in 1986. The survey included students from approximately 1,100
      high schools.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("CollegeDistance")

      .. rubric:: Format
         :name: format

      A data frame containing 4,739 observations on 14 variables.

      gender
         factor indicating gender.

      ethnicity
         factor indicating ethnicity (African-American, Hispanic or
         other).

      score
         base year composite test score. These are achievement tests
         given to high school seniors in the sample.

      fcollege
         factor. Is the father a college graduate?

      mcollege
         factor. Is the mother a college graduate?

      home
         factor. Does the family own their home?

      urban
         factor. Is the school in an urban area?

      unemp
         county unemployment rate in 1980.

      wage
         state hourly wage in manufacturing in 1980.

      distance
         distance from 4-year college (in 10 miles).

      tuition
         average state 4-year college tuition (in 1000 USD).

      education
         number of years of education.

      income
         factor. Is the family income above USD 25,000 per year?

      region
         factor indicating region (West or other).

      .. rubric:: Details
         :name: details

      Rouse (1995) computed years of education by assigning 12 years to
      all members of the senior class. Each additional year of secondary
      education counted as a one year. Students with vocational degrees
      were assigned 13 years, AA degrees were assigned 14 years, BA
      degrees were assigned 16 years, those with some graduate education
      were assigned 17 years, and those with a graduate degree were
      assigned 18 years.

      Stock and Watson (2007) provide separate data files for the
      students from Western states and the remaining students.
      ``CollegeDistance`` includes both data sets, subsets are easily
      obtained (see also examples).

      .. rubric:: Source
         :name: source

      Online complements to Stock and Watson (2007).

      .. rubric:: References
         :name: references

      Rouse, C.E. (1995). Democratization or Diversion? The Effect of
      Community Colleges on Educational Attainment. *Journal of Business
      & Economic Statistics*, **12**, 217–224.

      Stock, J.H. and Watson, M.W. (2007). *Introduction to
      Econometrics*, 2nd ed. Boston: Addison Wesley.

      .. rubric:: See Also
         :name: see-also

      ``StockWatson2007``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## exclude students from Western states
         data("CollegeDistance")
         cd <- subset(CollegeDistance, region != "west")
         summary(cd)
