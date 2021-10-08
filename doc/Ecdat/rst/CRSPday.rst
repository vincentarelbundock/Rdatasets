.. container::

   ======= ===============
   CRSPday R Documentation
   ======= ===============

   .. rubric:: Daily Returns from the CRSP Database
      :name: daily-returns-from-the-crsp-database

   .. rubric:: Description
      :name: description

   daily observations from 1969-1-03 to 1998-12-31

   *number of observations* : 2528

   *observation* : production units

   *country* : United States

   .. rubric:: Usage
      :name: usage

   ::

      data(CRSPday)

   .. rubric:: Format
      :name: format

   A dataframe containing :

   year
      the year

   month
      the month

   day
      the day

   ge
      the return for General Electric,
      `PERMNO <http://www.crsp.org/products/documentation/crsp-link>`__
      12060

   ibm
      the return for IBM, PERMNO 12490

   mobil
      the return for Mobil Corporation, PERMNO 15966

   crsp
      the return for the CRSP value-weighted index, including dividends

   .. rubric:: Source
      :name: source

   Center for Research in Security Prices, Graduate School of Business,
   University of Chicago, 725 South Wells - Suite 800, Chicago, Illinois
   60607, http://www.crsp.org.

   .. rubric:: References
      :name: references

   Davidson, R. and James G. MacKinnon (2004) *Econometric Theory and
   Methods*, New York, Oxford University Press, chapter 7, 9 and 15.

   .. rubric:: See Also
      :name: see-also

   ``Index.Source``, ``Index.Economics``, ``Index.Econometrics``,
   ``Index.Observations``,

   ``Index.Time.Series``
