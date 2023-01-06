.. container::

   ======= ===============
   nlswork R Documentation
   ======= ===============

   .. rubric:: National Longitudinal Survey of Young Working Women
      :name: national-longitudinal-survey-of-young-working-women

   .. rubric:: Description
      :name: description

   The ``nlswork`` data frame contains data about 4711 young working
   women who had an age of 14–26 years in 1968. These data are collected
   within the "National Longitudinal Survey" over the years 1968-1988
   (with gaps). There are 28534 observations in total.

   .. rubric:: Usage
      :name: usage

   ::

      data(nlswork)

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   idcode
      NLS ID.

   year
      interview year.

   birth_yr
      birth year.

   age
      age in current year.

   race
      1=white, 2=black, 3=other.

   msp
      1 if married, spouse present.

   nev_mar
      1 if never married.

   grade
      current grade completed.

   collgrad
      1 if college graduate.

   not_smsa
      1 if not SMSA.

   c_city
      1 if central city.

   south
      1 if south.

   ind_code
      industry of employment.

   occ_code
      occupation.

   union
      1 if union.

   wks_ue
      weeks unemployed last year.

   ttl_exp
      total work experience.

   tenure
      job tenure, in years.

   hours
      usual hours worked.

   wks_work
      weeks worked last year.

   ln_wage
      ln(wage/GNP deflator).

   .. rubric:: Details
      :name: details

   Two different versions of this data set are available on the
   internet. They are slighly different: The variable ``wks_work``
   (weeks worked last year) is ``101`` in this version (from Stata), but
   ``NA`` in the version provided by the Boston College for the
   observation with ``idcode = 1`` and ``year = 83``. Moreover, this
   variable is ``NA`` in this version (from Stata), but ``104`` in the
   version provided by the Boston College for the observation with
   ``idcode = 2`` and ``year = 87``.

   .. rubric:: Source
      :name: source

   Datasets for Stata Longitudinal/Panel-Data Reference Manual, Release
   10: National Longitudinal Survey. Young Women 14-26 years of age in
   1968, https://www.stata-press.com/data/r10/nlswork.dta.

   .. rubric:: References
      :name: references

   Boston College, National Longitudinal Survey. Young Women 14-26 years
   of age in 1968, https://fmwww.bc.edu/ec-p/data/stata/nlswork.dta.

   .. rubric:: Examples
      :name: examples

   ::

      data( "nlswork" )
      summary( nlswork )

      ## Not run: 
      library( "plm" )
      nlswork <- plm.data( nlswork, c( "idcode", "year" ) )
      plmResult <- plm( ln_wage ~ union + age + grade + not_smsa + south + occ_code,
         data = nlswork, model = "random" )
      summary( plmResult )

      ## End(Not run)
