==== ===============
adae R Documentation
==== ===============

Adverse Events Analysis
-----------------------

Description
~~~~~~~~~~~

Adverse Events Analysis

Usage
~~~~~

.. code:: R

   adae

Format
~~~~~~

A data frame with 107 columns:

STUDYID
   Study Identifier

USUBJID
   Unique Subject Identifier

SUBJID
   Subject Identifier for the Study

SITEID
   Study Site Identifier

COUNTRY
   Country

DOMAIN
   Domain Abbreviation

RFSTDTC
   Subject Reference Start Date/Time

RFENDTC
   Subject Reference End Date/Time

RFXSTDTC
   Date/Time of First Study Treatment

RFXENDTC
   Date/Time of Last Study Treatment

RFPENDTC
   Date/Time of End of Participation

SCRFDT
   Screen Failure Date

FRVDT
   Final Retrieval Visit Date

DTHDTC
   Date/Time of Death

DTHADY
   Relative Day of Death

DTHFL
   Subject Death Flag

LDDTHELD
   Elapsed Days from Last Dose to Death

LDDTHGR1
   Last Dose to Death - Days Elapsed Grp 1

DTH30FL
   Death Within 30 Days of Last Trt Flag

DTHA30FL
   Death After 30 Days from Last Trt Flag

DTHDOM
   Domain for Date of Death Collection

DTHB30FL
   Death Within 30 Days of First Trt Flag

REGION1
   Geographic Region 1

DMDTC
   Date/Time of Collection

DMDY
   Study Day of Collection

AGE
   Age

AGEU
   Age Units

AGEGR1
   Pooled Age Group 1

SEX
   Sex

RACE
   Race

RACEGR1
   Pooled Race Group 1

ETHNIC
   Ethnicity

SAFFL
   Safety Population Flag

ARM
   Description of Planned Arm

ARMCD
   Planned Arm Code

ACTARM
   Description of Actual Arm

ACTARMCD
   Actual Arm Code

TRT01P
   Planned Treatment for Period 01

TRT01A
   Actual Treatment for Period 01

TRTSDT
   Date of First Exposure to Treatment

TRTSDTM
   Datetime of First Exposure to Treatment

TRTSTMF
   Time of First Exposure Imput. Flag

TRTEDT
   Date of Last Exposure to Treatment

TRTEDTM
   Datetime of Last Exposure to Treatment

TRTETMF
   Time of Last Exposure Imput. Flag

EOSSTT
   End of Study Status

EOSDT
   End of Study Date

RFICDTC
   Date/Time of Informed Consent

RANDDT
   Date of Randomization

LSTALVDT
   Date Last Known Alive

TRTDURD
   Total Treatment Duration (Days)

DTHDT
   Date of Death

DTHDTF
   Date of Death Imputation Flag

DTHCAUS
   Cause of Death

DTHCGR1
   Cause of Death Reason 1

AESEQ
   Sequence Number

AETERM
   Reported Term for the Adverse Event

AEDECOD
   Dictionary-Derived Term

AEBODSYS
   Body System or Organ Class

AEBDSYCD
   Body System or Organ Class Code

AELLT
   Lowest Level Term

AELLTCD
   Lowest Level Term Code

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

AESOC
   Primary System Organ Class

AESOCCD
   Primary System Organ Class Code

AESTDTC
   Start Date/Time of Adverse Event

ASTDT
   Analysis Start Date

ASTDTM
   Analysis Start Date/Time

ASTDTF
   Analysis Start Date Imputation Flag

ASTTMF
   Analysis Start Time Imputation Flag

AEENDTC
   End Date/Time of Adverse Event

AENDT
   Analysis End Date

AENDTM
   Analysis End Date/Time

AENDTF
   Analysis End Date Imputation Flag

AENTMF
   Analysis End Time Imputation Flag

ASTDY
   Analysis Start Relative Day

AESTDY
   Study Day of Start of Adverse Event

AENDY
   Analysis End Relative Day

AEENDY
   Study Day of End of Adverse Event

ADURN
   Analysis Duration (N)

ADURU
   Analysis Duration Units

TRTEMFL
   Treatment Emergent Analysis Flag

AOCCIFL
   1st Max Sev./Int. Occurrence Flag

AESER
   Serious Event

AESDTH
   Results in Death

AESLIFE
   Is Life Threatening

AESHOSP
   Requires or Prolongs Hospitalization

AESDISAB
   Persist or Signif Disability/Incapacity

AESCONG
   Congenital Anomaly or Birth Defect

AESEV
   Severity/Intensity

ASEV
   Analysis Severity/Intensity

ASEVN
   Analysis Severity/Intensity (N)

AEREL
   Causality

AREL
   Analysis Causality

AEACN
   Action Taken with Study Treatment

AESPID
   Sponsor-Defined Identifier

AEOUT
   Outcome of Adverse Event

AESCAN
   Involves Cancer

AESOD
   Occurred with Overdose

AEDTC
   Date/Time of Collection

LDOSEDTM
   End Date/Time of Last Dose

DOSEON
   Treatment Dose

DOSEU
   Treatment Dose Unit

Source
~~~~~~

Generated from admiral package (template ad_adae.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adae")
