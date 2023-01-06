.. container::

   =========== ===============
   Cefamandole R Documentation
   =========== ===============

   .. rubric:: Pharmacokinetics of Cefamandole
      :name: pharmacokinetics-of-cefamandole

   .. rubric:: Description
      :name: description

   The ``Cefamandole`` data frame has 84 rows and 3 columns.

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   Subject
      a factor giving the subject from which the sample was drawn.

   Time
      a numeric vector giving the time at which the sample was drawn
      (minutes post-injection).

   conc
      a numeric vector giving the observed plasma concentration of
      cefamandole (mcg/ml).

   .. rubric:: Details
      :name: details

   Davidian and Giltinan (1995, 1.1, p. 2) describe data obtained during
   a pilot study to investigate the pharmacokinetics of the drug
   cefamandole. Plasma concentrations of the drug were measured on six
   healthy volunteers at 14 time points following an intraveneous dose
   of 15 mg/kg body weight of cefamandole.

   .. rubric:: Source
      :name: source

   Pinheiro, J. C. and Bates, D. M. (2000), *Mixed-Effects Models in S
   and S-PLUS*, Springer, New York. (Appendix A.4)

   Davidian, M. and Giltinan, D. M. (1995), *Nonlinear Models for
   Repeated Measurement Data*, Chapman and Hall, London.

   .. rubric:: Examples
      :name: examples

   ::

      plot(Cefamandole)
      fm1 <- nlsList(SSbiexp, data = Cefamandole)
      summary(fm1)
