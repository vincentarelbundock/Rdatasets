.. container::

   ====== ===============
   fringe R Documentation
   ====== ===============

   .. rubric:: fringe
      :name: fringe

   .. rubric:: Description
      :name: description

   Wooldridge Source: F. Vella (1993), “A Simple Estimator for
   Simultaneous Models with Censored Endogenous Regressors,”
   International Economic Review 34, 441-457. Professor Vella kindly
   provided the data. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('fringe')

   .. rubric:: Format
      :name: format

   A data.frame with 616 observations on 39 variables:

   -  **annearn:** annual earnings, $

   -  **hrearn:** hourly earnings, $

   -  **exper:** years work experience

   -  **age:** age in years

   -  **depends:** number of dependents

   -  **married:** =1 if married

   -  **tenure:** years with current employer

   -  **educ:** years schooling

   -  **nrtheast:** =1 if live in northeast

   -  **nrthcen:** =1 if live in north central

   -  **south:** =1 if live in south

   -  **male:** =1 if male

   -  **white:** =1 if white

   -  **union:** =1 if union member

   -  **office:**

   -  **annhrs:** annual hours worked

   -  **ind1:** industry dummy

   -  **ind2:**

   -  **ind3:**

   -  **ind4:**

   -  **ind5:**

   -  **ind6:**

   -  **ind7:**

   -  **ind8:**

   -  **ind9:**

   -  **vacdays:** $ value of vac. days

   -  **sicklve:** $ value of sick leave

   -  **insur:** $ value of employee insur

   -  **pension:** $ value of employee pension

   -  **annbens:** vacdays+sicklve+insur+pension

   -  **hrbens:** hourly benefits, $

   -  **annhrssq:** annhrs^2

   -  **beratio:** annbens/annearn

   -  **lannhrs:** log(annhrs)

   -  **tenuresq:** tenure^2

   -  **expersq:** exper^2

   -  **lannearn:** log(annearn)

   -  **peratio:** pension/annearn

   -  **vserat:** (vacdays+sicklve)/annearn

   .. rubric:: Notes
      :name: notes

   Currently, this data set is used in only one Computer Exercise – to
   illustrate the Tobit model. It can be used much earlier. First, one
   could just ignore the pileup at zero and use a linear model where any
   of the hourly benefit measures is the dependent variable. Another
   possibility is to use this data set for a problem set in Chapter 4,
   after students have read Example 4.10. That example, which uses
   teacher salary/benefit data at the school level, finds the expected
   tradeoff, although it appears to less than one-to-one. By contrast,
   if you do a similar analysis with FRINGE.RAW, you will not find a
   tradeoff. A positive coefficient on the benefit/salary ratio is not
   too surprising because we probably cannot control for enough factors,
   especially when looking across different occupations. The Michigan
   school-level data is more aggregated than one would like, but it does
   restrict attention to a more homogeneous group: high school teachers
   in Michigan.

   Used in Text: page 624-625

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(fringe)
