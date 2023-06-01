.. container::

   ============== ===============
   wvs_usa_educat R Documentation
   ============== ===============

   .. rubric:: Education Categories for the United States in the World
      Values Survey
      :name: wvs_usa_educat

   .. rubric:: Description
      :name: description

   This is a simple data set that summarizes what the education codes
   are in the World Values Survey for the United States.

   .. rubric:: Usage
      :name: usage

   ::

      wvs_usa_educat

   .. rubric:: Format
      :name: format

   A data frame with 42 observations the following 6 variables.

   ``x025``
      the numeric code for supposedly the highest educational level
      attained

   ``x025cswvs``
      the numeric code for supposedly the education-level attained by
      the respondent, with country-specific categories

   ``n``
      the number of observations in the World Values Survey with that
      unique ``x025cswvs`` code

   ``x025cswvsmeaning``
      the meaning behind the unique ``x025cswvs`` code

   ``x025meaning``
      the meaning behind the unique ``x025`` code

   ``educat``
      a standardized categorical variable corresponding with that unique
      ``x025cswvs`` code

   .. rubric:: Details
      :name: details

   Observations taken from the combined seven waves of survey data made
   available by the World Values Survey, but isolated to just the United
   States. The World Values Survey unfortunately did not collect
   information about the education-level of the respondent in the 1981
   and 1990 waves. These education categories feature in the Miller and
   Davis (2020) article in *Journal of Ethnicity, and Politics*, albeit
   before the release of the seventh wave.

   .. rubric:: References
      :name: references

   Miller, Steven V. and Nicholas T. Davis. Forthcoming. "The Effect of
   White Social Prejudice on Support for American Democracy." *Journal
   of Race, Ethnicity, and Politics*.
