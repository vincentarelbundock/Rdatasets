.. container::

   ======== ===============
   GSSvocab R Documentation
   ======== ===============

   .. rubric:: Data from the General Social Survey (GSS) from the
      National Opinion Research Center of the University of Chicago.
      :name: GSSvocab

   .. rubric:: Description
      :name: description

   This data set illustrates analyis of a multifactor observational
   study, with response given by subject's score on a vocabulary test,
   and factors for age group, education level, natality status, gender
   and year of the survey.

   .. rubric:: Usage
      :name: usage

   ::

      data("GSSvocab")

   .. rubric:: Format
      :name: format

   A data frame with 28867 observations on the following 8 variables.

   ``year``
      a factor with levels ``1978`` ``1982`` ``1984`` ``1987`` ``1988``
      ``1989`` ``1990`` ``1991`` ``1993`` ``1994`` ``1996`` ``1998``
      ``2000`` ``2004`` ``2006`` ``2008`` ``2010`` ``2012`` ``2014``
      ``2016``. Data are included from the GSS for each of these years.

   ``gender``
      a factor with levels ``female`` ``male``

   ``nativeBorn``
      Was the respondent born in the US? A factor with levels ``no`` and
      ``yes``.

   ``ageGroup``
      a factor with levels ``18-29`` ``30-39`` ``40-49`` ``50-59``
      ``60+``, grouped age of the respondent.

   ``educGroup``
      a factor with levels ``<12 yrs`` ``12 yrs`` ``13-15 yrs``
      ``16 yrs`` ``>16 yrs``, grouped education level of the respondent.
      12 years corresponds to high school graduate, 16 years to college
      graduate.

   ``vocab``
      Number of words out of 10 correct on a vocabulary test

   ``age``
      age of the respondent in years

   ``educ``
      years of education of the respondent

   .. rubric:: Details
      :name: details

   This file includes the years of the GSS for which the ``vocab`` and
   ``nativeBorn`` items were included.

   .. rubric:: Source
      :name: source

   These data were collected from the GSS data explorer
   https://gssdataexplorer.norc.org, using the data fields ``year``,
   ``id_``, ``age``, ``educ``, ``sex``, ``born`` and ``wordsum``. The
   GSS began in 1972, and has included several thousand data items, some
   regularly and some only once, on topics of interest to social
   scientists. Data have been slightly edited to change entires like
   ``No answer`` and ``Not applicable`` to missing value codes.

   .. rubric:: Examples
      :name: examples

   ::

      data(GSSvocab)
