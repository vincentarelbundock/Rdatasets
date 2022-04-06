.. container::

   ======= ===============
   UTIdata R Documentation
   ======= ===============

   .. rubric:: Data set for Unstructured Treatment Interruption Study
      :name: data-set-for-unstructured-treatment-interruption-study

   .. rubric:: Description
      :name: description

   Data set from a study of Unstructured Treatment Interruption in
   HIV-infected adolescents in four institutions in the US. The main
   outcome is the HIV-1 RNA viral load, which is subject to censoring
   below the lower limit of detection of the assay (50 copies/mL). The
   censored observations are indicated by the variable RNAcens

   .. rubric:: Usage
      :name: usage

   ::

      data(UTIdata)

   .. rubric:: Format
      :name: format

   A data frame with 373 observations on the following 5 variables.

   ``Patid``
      patient ID

   ``Days.after.TI``
      days after treatment interruption

   ``Fup``
      follow-up months

   ``RNA``
      viral load RNA

   ``RNAcens``
      censoring indicator for viral load

   .. rubric:: References
      :name: references

   Saitoh, A., Foca, M, et al. (2008), Clinical outcome in perinatally
   acquired HIV-infected children and adolescents after unstructured
   treatment interruption, Pediatrics,121, e513-e521.

   .. rubric:: Examples
      :name: examples

   ::

      data(UTIdata)
      ## maybe str(UTIdata) ; plot(UTIdata) ...
