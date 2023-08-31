.. container::

   =========== ===============
   ChinaIncome R Documentation
   =========== ===============

   .. rubric:: Chinese Real National Income Data
      :name: ChinaIncome

   .. rubric:: Description
      :name: description

   Time series of real national income in China per section (index with
   1952 = 100).

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("ChinaIncome")

   .. rubric:: Format
      :name: format

   An annual multiple time series from 1952 to 1988 with 5 variables.

   agriculture
      Real national income in agriculture sector.

   industry
      Real national income in industry sector.

   construction
      Real national income in construction sector.

   transport
      Real national income in transport sector.

   commerce
      Real national income in commerce sector.

   .. rubric:: Source
      :name: source

   Online complements to Franses (1998).

   .. rubric:: References
      :name: references

   Chow, G.C. (1993). Capital Formation and Economic Growth in China.
   *Quarterly Journal of Economics*, **103**, 809–842.

   Franses, P.H. (1998). *Time Series Models for Business and Economic
   Forecasting*. Cambridge, UK: Cambridge University Press.

   .. rubric:: See Also
      :name: see-also

   ``Franses1998``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("ChinaIncome")
      plot(ChinaIncome)
