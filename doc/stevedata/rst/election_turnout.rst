.. container::

   ================ ===============
   election_turnout R Documentation
   ================ ===============

   .. rubric:: State-Level Education and Voter Turnout in 2016
      :name: election_turnout

   .. rubric:: Description
      :name: description

   A simple data set on education and state-level (+ DC) turnout in the
   2016 presidential election. This is inspired by what Pollock (2012)
   does in his book.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      election_turnout

   .. rubric:: Format
      :name: format

   A data frame with 51 observations on the following 13 variables.

   ``year``
      the year of the presidential election (2016)

   ``state``
      the state abbreviation

   ``region``
      the state's Census region

   ``division``
      the state's Census division

   ``turnoutho``
      voter turnout for the highest office as percent of voting-eligible
      population (VEP)

   ``perhsed``
      the percentage of the state that completed high school

   ``percoled``
      the percentage of the state that completed college

   ``gdppercap``
      an estimate of the state's GDP per capita

   ``ss``
      is it a “swing state?”

   ``trumpw``
      did Trump win the state?

   ``trumpshare``
      the share of the vote Trump received

   ``sunempr``
      the state-level unemployment rate entering Nov. 2016

   ``sunempr12md``
      the state-level unemployment rate (12-month difference) entering
      Nov. 2016. Higher values indicate the unemployment rate is
      increasing entering Nov. 2016 relative to what it was entering
      Nov. 2015.

   ``gdp``
      an estimate of the state's GDP

   .. rubric:: Details
      :name: details

   Data were created in early 2017 for an upper-division course on
   quantitative methods. Educational attainment and division/region data
   come from the Census. Voter turnout/share data come from the
   Elections Project at George Mason University. GDP per capita
   estimates come from Bureau of Economic Analysis. Unemployment data
   come from the Bureau of Labor Statistics and code to generate it was
   derived from a forthcoming publication of mine.
