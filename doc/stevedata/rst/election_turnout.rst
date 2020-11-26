================ ===============
election_turnout R Documentation
================ ===============

State-Level Education and Voter Turnout in 2016
-----------------------------------------------

Description
~~~~~~~~~~~

A simple data set on education and state-level (+ DC) turnout in the
2016 presidential election. This is inspired by what Pollock (2012) does
in his book.

Usage
~~~~~

::

   election_turnout

Format
~~~~~~

A data frame with 51 observations on the following 10 variables.

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

Details
~~~~~~~

Data were created in early 2017 for an upper-division course on
quantitative methods. Educational attainment and division/region data
come from the Census. Voter turnout data come from the Elections Project
at George Mason University. GDP per capita estimates come from Bureau of
Economic Analysis.
