.. container::

   ========== ===============
   ratetables R Documentation
   ========== ===============

   .. rubric:: Census Data Sets for the Expected Survival and Person
      Years Functions
      :name: ratetables

   .. rubric:: Description
      :name: description

   Census data sets for the expected survival and person years
   functions.

   .. rubric:: Usage
      :name: usage

   ::

      data(survexp, package="survival")

   .. rubric:: Details
      :name: details

   survexp.us
      total United States population, by age and sex, 1940 to 2012.

   survexp.usr
      United States population, by age, sex and race, 1940 to 2014. Race
      is white or black. For 1960 and 1970 the black population values
      were not reported separately, so the nonwhite values were used.
      (Over the years, the reported tables have differed wrt reporting
      non-white and/or black.)

   survexp.mn
      total Minnesota population, by age and sex, 1970 to 2013.

   Each of these tables contains the daily hazard rate for a matched
   subject from the population, defined as ``-\log(1-q)/365.25`` where
   ``q`` is the 1 year probability of death as reported in the original
   tables from the US Census. For age 25 in 1970, for instance,
   ``p = 1-q`` is is the probability that a subject who becomes 25 years
   of age in 1970 will achieve his/her 26th birthday. The tables are
   recast in terms of hazard per day for computational convenience.

   Each table is stored as an array, with additional attributes, and can
   be subset and manipulated as standard R arrays. See the help page for
   ``ratetable`` for details.

   All numeric dimensions of a rate table must be in the same units. The
   ``survexp.us`` rate table contains daily hazard rates, the age
   cutpoints are in days, and the calendar year cutpoints are a Date.

   .. rubric:: See Also
      :name: see-also

   ``ratetable``, ``survexp``, ``pyears``

   .. rubric:: Examples
      :name: examples

   ::

      survexp.uswhite <- survexp.usr[,,"white",]
