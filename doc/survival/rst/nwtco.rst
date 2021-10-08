.. container::

   ===== ===============
   nwtco R Documentation
   ===== ===============

   .. rubric:: Data from the National Wilm's Tumor Study
      :name: data-from-the-national-wilms-tumor-study

   .. rubric:: Description
      :name: description

   Measurement error example. Tumor histology predicts survival, but
   prediction is stronger with central lab histology than with the local
   institution determination.

   .. rubric:: Usage
      :name: usage

   ::

      nwtco
      data(nwtco, package="survival")

   .. rubric:: Format
      :name: format

   A data frame with 4028 observations on the following 9 variables.

   ``seqno``
      id number

   ``instit``
      Histology from local institution

   ``histol``
      Histology from central lab

   ``stage``
      Disease stage

   ``study``
      study

   ``rel``
      indicator for relapse

   ``edrel``
      time to relapse

   ``age``
      age in months

   ``in.subcohort``
      Included in the subcohort for the example in the paper

   .. rubric:: References
      :name: references

   NE Breslow and N Chatterjee (1999), Design and analysis of two-phase
   studies with binary outcome applied to Wilms tumour prognosis.
   *Applied Statistics* **48**, 457–68.

   .. rubric:: Examples
      :name: examples

   ::

      with(nwtco, table(instit,histol))
      anova(coxph(Surv(edrel,rel)~histol+instit,data=nwtco))
      anova(coxph(Surv(edrel,rel)~instit+histol,data=nwtco))
