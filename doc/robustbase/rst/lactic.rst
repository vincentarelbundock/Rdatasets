.. container::

   ====== ===============
   lactic R Documentation
   ====== ===============

   .. rubric:: Lactic Acid Concentration Measurement Data
      :name: lactic-acid-concentration-measurement-data

   .. rubric:: Description
      :name: description

   Data on the Calibration of an Instrument that Measures Lactic Acid
   Concentration in Blood, from Afifi and Azen (1979) - comparing the
   true concentration X with the measured value Y.

   .. rubric:: Usage
      :name: usage

   ::

      data(lactic, package="robustbase")

   .. rubric:: Format
      :name: format

   A data frame with 20 observations on the following 2 variables.

   ``X``
      True Concentration

   ``Y``
      Instrument

   .. rubric:: Source
      :name: source

   P. J. Rousseeuw and A. M. Leroy (1987) *Robust Regression and Outlier
   Detection*; Wiley, p.62, table 10.

   .. rubric:: Examples
      :name: examples

   ::

      data(lactic)
      summary(lm.lactic <- lm(Y ~., data=lactic))

