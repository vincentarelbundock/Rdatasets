.. container::

   .. container::

      === ===============
      Oil R Documentation
      === ===============

      .. rubric:: Oil Investment
         :name: oil-investment

      .. rubric:: Description
         :name: description

      a cross-section from 1969 to 1992

      *number of observations* : 53

      *observation* : production units

      *country* : United Kingdom

      .. rubric:: Usage
         :name: usage

      ::

         data(Oil)

      .. rubric:: Format
         :name: format

      A dataframe containing :

      dur
         duration of the appraisal lag in months (time span between
         discovery of an oil field and beginning of development, i.e.
         approval of annex B).

      size
         size of recoverable reserves in millions of barrels

      waterd
         depth of the sea in metres

      gasres
         size of recoverable gas reserves in billions of cubic feet

      operator
         equity market value (in 1991 million pounds) of the company
         operating the oil field

      p
         real after–tax oil price measured at time of annex B approval

      vardp
         volatility of the real oil price process measured as the
         squared recursive standard errors of the regression of
         codept-pt-1 on a constant

      p97
         adaptive expectations (with parameter theta=0.97) for the real
         after–tax oil prices formed at the time of annex B approval

      varp97
         volatility of the adaptive expectations (with parameter
         theta=0.97) for real after tax oil prices measured as the
         squared recursive standard errors of the regression of ``pt``
         on ``pte(theta)``

      p98
         adaptive expectations (with parameter theta=0.98) for the real
         after–tax oil prices formed at the time of annex B approval

      varp98
         volatility of the adaptive expectations (with parameter
         theta=0.98) for real after tax oil prices measured as the
         squared recursive standard errors of the regression of ``pt``
         on ``pte(theta)``

      .. rubric:: Source
         :name: source

      Favero, Carlo A., M. Hashem Pesaran and Sunil Sharma (1994) “A
      duration model of irreversible oil investment : theory and
      empirical evidence”, *Journal of Applied Econometrics*, **9(S)**,
      S95–S112.

      .. rubric:: References
         :name: references

      Journal of Applied Econometrics data archive :
      http://qed.econ.queensu.ca/jae/.

      .. rubric:: See Also
         :name: see-also

      ``Index.Source``, ``Index.Economics``, ``Index.Econometrics``,
      ``Index.Observations``
