.. container::

   ============ ===============
   Unemployment R Documentation
   ============ ===============

   .. rubric:: Unemployment Duration
      :name: Unemployment

   .. rubric:: Description
      :name: description

   a cross-section from 1993

   *number of observations* : 452

   *observation* : individuals

   *country* : United States

   .. rubric:: Usage
      :name: usage

   ::

      data(Unemployment)

   .. rubric:: Format
      :name: format

   A dataframe containing :

   duration
      duration of first spell of unemployment, t, in weeks

   spell
      1 if spell is complete

   race
      one of nonwhite, white

   sex
      one of male, female

   reason
      reason for unemployment, one of ``new`` (new entrant), ``lose``
      (job loser), ``leave`` (job leaver), ``reentr`` (labor force
      reentrant)

   search
      'yes' if (1) the unemployment spell is completed between the first
      and second surveys and number of methods used to search > average
      number of methods used across all records in the sample, or, (2)
      for individuals who remain unemployed for consecutive surveys, if
      the number of methods used is strictly nondecreasing at all survey
      points, and is strictly increasing at least at one survey point

   pubemp
      'yes' if an individual used a public employment agency to search
      for work at any survey points relating to the individuals first
      unemployment spell

   ftp1
      1 if an individual is searching for full time work at survey 1

   ftp2
      1 if an individual is searching for full time work at survey 2

   ftp3
      1 if an individual is searching for full time work at survey 3

   ftp4
      1 if an individual is searching for full time work at survey 4

   nobs
      number of observations on the first spell of unemployment for the
      record

   .. rubric:: Source
      :name: source

   Romeo, Charles J. (1999) “Conducting inference in semiparametric
   duration models under inequality restrictions on the shape of the
   hazard implied by the job search theory”, *Journal of Applied
   Econometrics*, **14(6)**, 587–605.

   .. rubric:: References
      :name: references

   Journal of Applied Econometrics data archive :
   http://qed.econ.queensu.ca/jae/.

   .. rubric:: See Also
      :name: see-also

   ``Index.Source``, ``Index.Economics``, ``Index.Econometrics``,
   ``Index.Observations``
