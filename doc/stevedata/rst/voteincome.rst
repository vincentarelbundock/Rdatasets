.. container::

   ========== ===============
   voteincome R Documentation
   ========== ===============

   .. rubric:: Sample Turnout and Demographic Data from the 2000 Current
      Population Survey
      :name: voteincome

   .. rubric:: Description
      :name: description

   A data set on turnout and demographic data from the 2000 Current
   Population Survey. This is a basic port of the ``voteincome`` data
   from the Zelig package.

   .. rubric:: Usage
      :name: usage

   ::

      voteincome

   .. rubric:: Format
      :name: format

   A data frame with 1500 observations on the following 7 variables.

   ``state``
      a character variable for the state, either Arkansas (AK) or South
      Carolina (SC)

   ``year``
      a numeric constant for the year (2000)

   ``vote``
      a dummy variable for whether the person voted (1) or did not vote

   ``income``
      a numeric variable for income ranging from 4 (less than $5000) to
      17 (greater than $75000)

   ``education``
      a numeric variable for educational attainment ranging from 1 (less
      than high school education) to 4 (more than college education)

   ``age``
      a numeric variable for the respondent's age in years,ranging from
      18 to 85

   ``female``
      a dummy variable for whether the respondent is a woman (1) or a
      man (0)

   .. rubric:: Details
      :name: details

   Data come from the 2000 Current Population Survey by way of the Zelig
   package. Data should not be used for inferential applications, only
   for pedagogical purposes. See the appropriate CPS codebook for more
   information on variable coding (especially for income and education).
   In all likelihood, age is right-censored as well.
