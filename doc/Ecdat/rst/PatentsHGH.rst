.. container::

   ========== ===============
   PatentsHGH R Documentation
   ========== ===============

   .. rubric:: Dynamic Relation Between Patents and R&D
      :name: PatentsHGH

   .. rubric:: Description
      :name: description

   a panel of 346 observations from 1975 to 1979

   *number of observations* : 1730

   *observation* : production units

   *country* : United States

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(PatentsHGH)

   .. rubric:: Format
      :name: format

   A dataframe containing :

   obsno
      firm index

   year
      year

   cusip
      Compustat's identifying number for the firm (Committee on Uniform
      Security Identification Procedures number)

   ardsic
      a two-digit code for the applied R&D industrial classification
      (roughly that in Bound, Cummins, Griliches, Hall, and Jaffe, in
      the Griliches R&D, Patents, and Productivity volume)

   scisect
      is the firm in the scientific sector ?

   logk
      the logarithm of the book value of capital in 1972.

   sumpat
      the sum of patents applied for between 1972-1979.

   logr
      the logarithm of R&D spending during the year (in 1972 dollars)

   logr1
      the logarithm of R&D spending (one year lag)

   logr2
      the logarithm of R&D spending (two years lag)

   logr3
      the logarithm of R&D spending (three years lag)

   logr4
      the logarithm of R&D spending (four years lag)

   logr5
      the logarithm of R&D spending (five years lag)

   pat
      the number of patents applied for during the year that were
      eventually granted

   pat1
      the number of patents (one year lag)

   pat2
      the number of patents (two years lag)

   pat3
      the number of patents (three years lag)

   pat4
      the number of patents (four years lag)

   .. rubric:: Source
      :name: source

   Hall, Bronwyn, Zvi Griliches and Jerry Hausman (1986) “Patents and
   R&D: Is There a Lag?”, *International Economic Review*, **27**,
   265-283.

   .. rubric:: References
      :name: references

   Cameron, A.C. and Trivedi P.K. (1998) *Regression analysis of count
   data*, Cambridge University Press,
   http://cameron.econ.ucdavis.edu/racd/racddata.html, chapter 9.

   Cameron, A.C. and P.K. Trivedi (2005) *Microeconometrics : methods
   and applications*, Cambridge, pp. 792–5.

   .. rubric:: See Also
      :name: see-also

   ``PatentsRD``, ``Index.Source``, ``Index.Economics``,
   ``Index.Econometrics``, ``Index.Observations``, ``Index.Time.Series``
