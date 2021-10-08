.. container::

   ====== ===============
   etmotc R Documentation
   ====== ===============

   .. rubric:: Effect of erythromycin on mixed sewage microorganisms
      :name: effect-of-erythromycin-on-mixed-sewage-microorganisms

   .. rubric:: Description
      :name: description

   Relative growth rate in biomass of mixed sewage microorganisms (per
   hour) as a function of increasing concentrations of the antibiotic
   erythromycin (mg/l).

   .. rubric:: Usage
      :name: usage

   ::

      data(etmotc)

   .. rubric:: Format
      :name: format

   A data frame with 57 observations on the following 4 variables.

   ``cell``
      a numeric vector

   ``dose1``
      a numeric vector

   ``pct1``
      a numeric vector

   ``rgr1``
      a numeric vector

   .. rubric:: Details
      :name: details

   Data stem from an experiment investigating the effect of
   pharmaceuticals, that are used in human and veterinary medicine and
   that are being released into the aquatic environment through waste
   water or through manure used for fertilising agricultural land. The
   experiment constitutes a typical dose-response situation. The dose is
   concentration of the antibiotic erythromycin (mg/l), which is an
   antibiotic that can be used by persons or animals showing allergy to
   penicillin, and the measured response is the relative growth rate in
   biomass of mixed sewage microorganisms (per hour), measured as
   turbidity two hours after exposure by means of a spectrophotometer.
   The experiment was designed in such a way that eight replicates were
   assigned to the control (dose 0), but no replicates were assigned to
   the 7 non-zero doses. Further details are found in Christensen et al
   (2006).

   .. rubric:: Source
      :name: source

   Christensen, A. M. and Ingerslev, F. and Baun, A. 2006 Ecotoxicity of
   mixtures of antibiotics used in aquacultures, *Environmental
   Toxicology and Chemistry*, **25**, 2208–2215.

   .. rubric:: Examples
      :name: examples

   ::


      etmotc.m1<-drm(rgr1~dose1, data=etmotc[1:15,], fct=LL.4())
      plot(etmotc.m1)
      modelFit(etmotc.m1)
      summary(etmotc.m1)

      etmotc.m2<-drm(rgr1~dose1, data=etmotc[1:15,], fct=W2.4())
      plot(etmotc.m2, add = TRUE)
      modelFit(etmotc.m2)
      summary(etmotc.m2)

      etmotc.m3<-drm(rgr1~dose1, data=etmotc[1:15,], fct=W2.3())
      plot(etmotc.m3, add = TRUE)
      modelFit(etmotc.m3)
      summary(etmotc.m3)
