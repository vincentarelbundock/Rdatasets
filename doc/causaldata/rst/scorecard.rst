.. container::

   ========= ===============
   scorecard R Documentation
   ========= ===============

   .. rubric:: Earnings and Loan Repayment in US Four-Year Colleges
      :name: scorecard

   .. rubric:: Description
      :name: description

   From the College Scorecard, this data set contains by-college-by-year
   data on how students who attended those colleges are doing.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      scorecard

   .. rubric:: Format
      :name: format

   A data frame with 48,445 rows and 8 variables:

   unitid
      College identifiers

   inst_name
      Name of the college or university

   state_abbr
      Two-letter abbreviation for the state the college is in

   pred_degree_awarded_ipeds
      Predominant degree awarded. 1 = less-than-two-year, 2 = two-year,
      3 = four-year+

   year
      Year in which outcomes are measured

   earnings_med
      Median earnings among students (a) who received federal financial
      aid, (b) who began as undergraduates at the institution ten years
      prior, (c) with positive yearly earnings

   count_not_working
      Number of students who are (a) not working (not necessarily
      unemployed), (b) received federal financial aid, and (c) who began
      as undergraduates at the institution ten years prior

   count_working
      Number of students who are (a) working, (b) who received federal
      financial aid, and (c) who began as undergraduates at the
      institution ten years prior

   .. rubric:: Details
      :name: details

   This data is not just limited to four-year colleges and includes a
   very wide variety of institutions.

   Note that the labor market (earnings, working) and repayment rate
   data do not refer to the same cohort of students, but rather are
   matched on the year in which outcomes are recorded. Labor market data
   refers to cohorts beginning college as undergraduates ten years
   prior, repayment rate data refers to cohorts entering repayment seven
   years prior.

   Data was downloaded using the Urban Institute's ``educationdata``
   package.

   This data was used in the *Describing Variables* chapter of The
   Effect by Huntington-Klein

   .. rubric:: Source
      :name: source

   Education Data Portal (Version 0.4.0 - Beta), Urban Institute, Center
   on Education Data and Policy, accessed June 28, 2019.
   https://educationdata.urban.org/documentation/, Scorecard.

   .. rubric:: References
      :name: references

   Huntington-Klein. 2021. The Effect: An Introduction to Research
   Design and Causality. https://theeffectbook.net.
