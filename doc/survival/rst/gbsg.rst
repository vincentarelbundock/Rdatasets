==== ===============
gbsg R Documentation
==== ===============

Breast cancer data sets used in Royston and Altman (2013)
---------------------------------------------------------

Description
~~~~~~~~~~~

The ``gbsg`` data set contains patient records from a 1984-1989 trial
conducted by the German Breast Cancer Study Group (GBSG) of 720 patients
with node positive breast cancer; it retains the 686 patients with
complete data for the prognostic variables.

Usage
~~~~~

::

   data("gbsg")

Format
~~~~~~

A data set with 686 observations and 11 variables.

``pid``
   patient identifier

``age``
   age

``meno``
   menopausal status (0= premenopausal, 1= postmenopausal)

``size``
   tumor size

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
   recurrnece free survival time; days to first of reccurence, death or
   last follow-up

``status``
   0= alive without recurrence, 1= recurrence or death

Details
~~~~~~~

These data sets are used in the paper by Royston and Altman. The
Rotterdam data is used to create a fitted model, and the GBSG data for
validation of the model. The paper gives references for the data source.

References
~~~~~~~~~~

Patrick Royston and Douglas Altman, External validation of a Cox
prognostic model: principles and methods. BMC Medical Research
Methodology 2013, 13:33

See Also
~~~~~~~~

``rotterdam``
