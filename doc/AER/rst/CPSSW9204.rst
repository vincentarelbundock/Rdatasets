.. container::

   ===== ===============
   CPSSW R Documentation
   ===== ===============

   .. rubric:: Stock and Watson CPS Data Sets
      :name: CPSSW

   .. rubric:: Description
      :name: description

   Stock and Watson (2007) provide several subsets created from March
   Current Population Surveys (CPS) with data on the relationship of
   earnings and education over several year.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("CPSSW9204")
      data("CPSSW9298")
      data("CPSSW04")
      data("CPSSW3")
      data("CPSSW8")
      data("CPSSWEducation")

   .. rubric:: Format
      :name: format

   ``CPSSW9298``: A data frame containing 13,501 observations on 5
   variables. ``CPSSW9204``: A data frame containing 15,588 observations
   on 5 variables. ``CPSSW04``: A data frame containing 7,986
   observations on 4 variables. ``CPSSW3``: A data frame containing
   20,999 observations on 3 variables. ``CPSSW8``: A data frame
   containing 61,395 observations on 5 variables. ``CPSSWEducation``: A
   data frame containing 2,950 observations on 4 variables.

   year
      factor indicating year.

   earnings
      average hourly earnings (sum of annual pretax wages, salaries,
      tips, and bonuses, divided by the number of hours worked
      annually).

   education
      number of years of education.

   degree
      factor indicating highest educational degree (``"bachelor"``
      or\ ``"highschool"``).

   gender
      factor indicating gender.

   age
      age in years.

   region
      factor indicating region of residence (``"Northeast"``,
      ``"Midwest"``, ``"South"``, ``"West"``).

   .. rubric:: Details
      :name: details

   Each month the Bureau of Labor Statistics in the US Department of
   Labor conducts the Current Population Survey (CPS), which provides
   data on labor force characteristics of the population, including the
   level of employment, unemployment, and earnings. Approximately 65,000
   randomly selected US households are surveyed each month. The sample
   is chosen by randomly selecting addresses from a database. Details
   can be found in the Handbook of Labor Statistics and is described on
   the Bureau of Labor Statistics website (https://www.bls.gov/).

   The survey conducted each March is more detailed than in other months
   and asks questions about earnings during the previous year. The data
   sets contain data for 2004 (from the March 2005 survey), and some
   also for earlier years (up to 1992).

   If education is given, it is for full-time workers, defined as
   workers employed more than 35 hours per week for at least 48 weeks in
   the previous year. Data are provided for workers whose highest
   educational achievement is a high school diploma and a bachelor's
   degree.

   Earnings for years earlier than 2004 were adjusted for inflation by
   putting them in 2004 USD using the Consumer Price Index (CPI). From
   1992 to 2004, the price of the CPI market basket rose by 34.6%. To
   make earnings in 1992 and 2004 comparable, 1992 earnings are inflated
   by the amount of overall CPI price inflation, by multiplying 1992
   earnings by 1.346 to put them into 2004 dollars.

   ``CPSSW9204`` provides the distribution of earnings in the US in 1992
   and 2004 for college-educated full-time workers aged 25–34.
   ``CPSSW04`` is a subset of ``CPSSW9204`` and provides the
   distribution of earnings in the US in 2004 for college-educated
   full-time workers aged 25–34. ``CPSSWEducation`` is similar (but not
   a true subset) and contains the distribution of earnings in the US in
   2004 for college-educated full-time workers aged 29–30. ``CPSSW8``
   contains a larger sample with workers aged 21–64, additionally
   providing information about the region of residence. ``CPSSW9298`` is
   similar to ``CPSSW9204`` providing data from 1992 and 1998 (with the
   1992 subsets not being exactly identical). ``CPSSW3`` provides trends
   (from 1992 to 2004) in hourly earnings in the US of working college
   graduates aged 25–34 (in 2004 USD).

   .. rubric:: Source
      :name: source

   Online complements to Stock and Watson (2007).

   .. rubric:: References
      :name: references

   Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*,
   2nd ed. Boston: Addison Wesley.

   .. rubric:: See Also
      :name: see-also

   ``StockWatson2007``, ``CPS1985``, ``CPS1988``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("CPSSW3")
      with(CPSSW3, interaction.plot(year, gender, earnings))

      ## Stock and Watson, p. 165
      data("CPSSWEducation")
      plot(earnings ~ education, data = CPSSWEducation)
      fm <- lm(earnings ~ education, data = CPSSWEducation)
      coeftest(fm, vcov = sandwich)
      abline(fm)
