.. container::

   .. container::

      ======== ===============
      Dialyzer R Documentation
      ======== ===============

      .. rubric:: High-Flux Hemodialyzer
         :name: high-flux-hemodialyzer

      .. rubric:: Description
         :name: description

      The ``Dialyzer`` data frame has 140 rows and 5 columns.

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      Subject
         an ordered factor with levels ``10`` < ``8`` < ``2`` < ``6`` <
         ``3`` < ``5`` < ``9`` < ``7`` < ``1`` < ``4`` < ``17`` < ``20``
         < ``11`` < ``12`` < ``16`` < ``13`` < ``14`` < ``18`` < ``15``
         < ``19`` giving the unique identifier for each subject

      QB
         a factor with levels ``200`` and ``300`` giving the bovine
         blood flow rate (dL/min).

      pressure
         a numeric vector giving the transmembrane pressure (dmHg).

      rate
         the hemodialyzer ultrafiltration rate (mL/hr).

      index
         index of observation within subject—1 through 7.

      .. rubric:: Details
         :name: details

      Vonesh and Carter (1992) describe data measured on high-flux
      hemodialyzers to assess their *in vivo* ultrafiltration
      characteristics. The ultrafiltration rates (in mL/hr) of 20
      high-flux dialyzers were measured at seven different transmembrane
      pressures (in dmHg). The *in vitro* evaluation of the dialyzers
      used bovine blood at flow rates of either 200~dl/min or
      300~dl/min. The data, are also analyzed in Littell, Milliken,
      Stroup, and Wolfinger (1996).

      .. rubric:: Source
         :name: source

      Pinheiro, J. C. and Bates, D. M. (2000), *Mixed-Effects Models in
      S and S-PLUS*, Springer, New York. (Appendix A.6)

      Vonesh, E. F. and Carter, R. L. (1992), Mixed-effects nonlinear
      regression for unbalanced repeated measures, *Biometrics*, **48**,
      1-18.

      Littell, R. C., Milliken, G. A., Stroup, W. W. and Wolfinger, R.
      D. (1996), *SAS System for Mixed Models*, SAS Institute, Cary, NC.
