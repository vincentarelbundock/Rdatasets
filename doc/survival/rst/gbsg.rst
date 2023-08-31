.. container::

   ==== ===============
   gbsg R Documentation
   ==== ===============

   .. rubric:: Breast cancer data sets used in Royston and Altman (2013)
      :name: gbsg

   .. rubric:: Description
      :name: description

   The ``gbsg`` data set contains patient records from a 1984-1989 trial
   conducted by the German Breast Cancer Study Group (GBSG) of 720
   patients with node positive breast cancer; it retains the 686
   patients with complete data for the prognostic variables.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      gbsg
      data(cancer, package="survival")

   .. rubric:: Format
      :name: format

   A data set with 686 observations and 11 variables.

   ``pid``
      patient identifier

   ``age``
      age, years

   ``meno``
      menopausal status (0= premenopausal, 1= postmenopausal)

   ``size``
      tumor size, mm

   ``grade``
      tumor grade

   ``nodes``
      number of positive lymph nodes

   ``pgr``
      progesterone receptors (fmol/l)

   ``er``
      estrogen receptors (fmol/l)

   ``hormon``
      hormonal therapy, 0= no, 1= yes

   ``rfstime``
      recurrence free survival time; days to first of reccurence, death
      or last follow-up

   ``status``
      0= alive without recurrence, 1= recurrence or death

   .. rubric:: Details
      :name: details

   These data sets are used in the paper by Royston and Altman. The
   Rotterdam data is used to create a fitted model, and the GBSG data
   for validation of the model. The paper gives references for the data
   source.

   .. rubric:: References
      :name: references

   Patrick Royston and Douglas Altman, External validation of a Cox
   prognostic model: principles and methods. BMC Medical Research
   Methodology 2013, 13:33

   .. rubric:: See Also
      :name: see-also

   ``rotterdam``
