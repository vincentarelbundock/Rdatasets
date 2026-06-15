==== ===============
adpp R Documentation
==== ===============

Pharmacokinetic Parameters
--------------------------

Description
~~~~~~~~~~~

Pharmacokinetic Parameters

Usage
~~~~~

.. code:: R

   adpp

Format
~~~~~~

A data frame with 79 columns:

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

ADT
   Analysis Date

ADY
   Analysis Relative Day

AVISIT
   Analysis Visit

AVISITN
   Analysis Visit (N)

PARAMCD
   Parameter Code

AVAL
   Numeric Result/Finding in Standard Units

AVALCAT1
   Analysis Value Category 1

AVALCA1N
   Analysis Value Category 1 (N)

SRCDOM
   Domain Abbreviation

SRCVAR
   Source Variable

SRCSEQ
   Sequence Number

PPTESTCD
   Parameter Short Name

PPTEST
   Parameter Name

PPCAT
   Parameter Category

PPORRES
   Result or Finding in Original Units

PPORRESU
   Original Units

PPSTRESU
   Standard Units

PPSPEC
   Specimen Material Type

PPRFDTC
   Date/Time of Reference Point

VISIT
   Visit Name

VISITNUM
   Visit Number

PARCAT1
   Parameter Category

AVALU
   Standard Units

Source
~~~~~~

Generated from admiral package (template ad_adpp.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adpp")
