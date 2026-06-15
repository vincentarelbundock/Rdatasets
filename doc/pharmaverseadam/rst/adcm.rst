==== ===============
adcm R Documentation
==== ===============

Concomitant Medications Analysis
--------------------------------

Description
~~~~~~~~~~~

Concomitant Medications Analysis

Usage
~~~~~

.. code:: R

   adcm

Format
~~~~~~

A data frame with 95 columns:

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

TRTP
   Planned Treatment

TRTA
   Actual Treatment

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
   Treatment End Datetime Imput Flag

APHASE
   Phase

APHASEN
   Description of Phase N

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

CMSEQ
   Sequence Number

CMDECOD
   Standardized Medication Name

CMTRT
   Reported Name of Drug, Med, or Therapy

CMCLAS
   Medication Class

CMSTDTC
   Start Date/Time of Medication

ASTDT
   Analysis Start Date

ASTDTM
   Analysis Start Date/Time

ASTDTF
   Analysis Start Date Imputation Flag

ASTTMF
   Analysis Start Time Imputation Flag

CMENDTC
   End Date/Time of Medication

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

CMSTDY
   Study Day of Start of Medication

AENDY
   Analysis End Relative Day

CMENDY
   Study Day of End of Medication

ADURN
   Analysis Duration (N)

ADURU
   Analysis Duration Units

ANL01FL
   Analysis Flag 01

ONTRTFL
   On Treatment Record Flag

PREFL
   Pre-treatment Flag

FUPFL
   Follow-up Flag

AOCCPFL
   1st Occurrence of Preferred Term Flag

CMINDC
   Indication

CMDOSE
   Dose per Administration

CMDOSU
   Dose Units

CMDOSFRQ
   Dosing Frequency per Interval

CMROUTE
   Route of Administration

CMSPID
   Sponsor-Defined Identifier

CMENRTPT
   End Relative to Reference Time Point

VISITNUM
   Visit Number

VISIT
   Visit Name

VISITDY
   Planned Study Day of Visit

CMDTC
   Date/Time of Collection

Source
~~~~~~

Generated from admiral package (template ad_adcm.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adcm")
