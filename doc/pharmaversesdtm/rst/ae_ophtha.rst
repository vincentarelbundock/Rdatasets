========= ===============
ae_ophtha R Documentation
========= ===============

Adverse Events for Ophthalmology
--------------------------------

Description
~~~~~~~~~~~

An example Adverse Events SDTM dataset with ophthalmology-specific
variable ``AELAT``

Usage
~~~~~

.. code:: R

   ae_ophtha

Format
~~~~~~

A data frame with 37 columns:

STUDYID
   Study Identifier

DOMAIN
   Domain Abbreviation

USUBJID
   Unique Subject Identifier

AESEQ
   Sequence Number

AESPID
   Sponsor-Defined Identifier

AETERM
   Reported Term for the Adverse Event

AELLT
   Lowest Level Term

AELLTCD
   Lowest Level Term Code

AEDECOD
   Dictionary-Derived Term

AEPTCD
   Preferred Term Code

AEHLT
   High Level Term

AEHLTCD
   High Level Term Code

AEHLGT
   High Level Group Term

AEHLGTCD
   High Level Group Term Code

AEBODSYS
   Body System or Organ Class

AEBDSYCD
   Body System or Organ Class Code

AESOC
   Primary System Organ Class

AESOCCD
   Primary System Organ Class Code

AESEV
   Severity/Intensity

AESER
   Serious Event

AEACN
   Action Taken with Study Treatment

AEREL
   Causality

AEOUT
   Outcome of Adverse Event

AESCAN
   Involves Cancer

AESCONG
   Congenital Anomaly or Birth Defect

AESDISAB
   Persist or Signif Disability/Incapacity

AESDTH
   Results in Death

AESHOSP
   Requires or Prolongs Hospitalization

AESLIFE
   Is Life Threatening

AESOD
   Occurred with Overdose

AEDTC
   Date/Time of Collection

AESTDTC
   Start Date/Time of Adverse Event

AEENDTC
   End Date/Time of Adverse Event

AESTDY
   Study Day of Start of Adverse Event

AEENDY
   Study Day of End of Adverse Event

AELAT
   Laterality

AELOC
   Location

Details
~~~~~~~

Adverse Events for Ophthalmology

An example Adverse Events SDTM dataset with ophthalmology-specific
variable ``AELAT``

Source
~~~~~~

Constructed using ae from the pharmaversesdtm package
