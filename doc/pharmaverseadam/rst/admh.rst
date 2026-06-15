==== ===============
admh R Documentation
==== ===============

Medical History Analysis
------------------------

Description
~~~~~~~~~~~

Medical History Analysis

Usage
~~~~~

.. code:: R

   admh

Format
~~~~~~

A data frame with 114 columns:

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

MHSEQ
   Sequence Number

MHTERM
   Reported Term for the Medical History

MHTERMN
   Medical History Term (N)

MHDECOD
   Dictionary-Derived Term

MHBODSYS
   Body System or Organ Class

MHLLT
   Lowest Level Term

MHHLT
   High Level Term

MHHLGT
   High Level Group Term

MHCAT
   Category for Medical History

MHSTDTC
   Start Date/Time of Medical History Event

ASTDT
   Analysis Start Date

MHENDTC
   End Date/Time of Medical History Event

AENDT
   Analysis End Date

ASTDY
   Analysis Start Relative Day

AENDY
   Analysis End Relative Day

MHOCCUR
   Medical History Occurrence

MHPRESP
   Medical History Event Pre-Specified

ANL01FL
   Analysis Flag 01

AOCCFL
   1st Occurrence within Subject Flag

AOCCPFL
   1st Occurrence of Preferred Term Flag

AOCCSFL
   1st Occurrence of SOC Flag

MHSPID
   Sponsor-Defined Identifier

MHSEV
   Severity/Intensity

VISITNUM
   Visit Number

VISIT
   Visit Name

VISITDY
   Planned Study Day of Visit

MHDTC
   Date/Time of History Collection

MHDY
   Study Day of History Collection

MHSTRTPT
   Start Relative to Reference Time Point

MHENRTPT
   End Relative to Reference Time Point

MHSTTPT
   Start Reference Time Point

MHENTPT
   End Reference Time Point

MHENRF
   End Relative to Reference Period

MHSTAT
   Completion Status

ADT
   Analysis Date

ADY
   Analysis Relative Day

SMQ02NAM
   SMQ 02 Name

SMQ02CD
   SMQ 02 Code

SMQ02SC
   SMQ 02 Scope

SMQ02SCN
   SMQ 02 Scope (N)

SMQ03NAM
   SMQ 03 Name

SMQ03CD
   SMQ 03 Code

SMQ03SC
   SMQ 03 Scope

SMQ03SCN
   SMQ 03 Scope (N)

SMQ05NAM
   SMQ 05 Name

SMQ05CD
   SMQ 05 Code

SMQ05SC
   SMQ 05 Scope

SMQ05SCN
   SMQ 05 Scope (N)

CQ01NAM
   Customized Query 01 Name

CQ04NAM
   Customized Query 04 Name

CQ04CD
   Customized Query 04 Code

AHIST
   Response of Med Hx (past or current)

AOCPFL
   1st Occur w/in Trt Prd FL

AOCPSFL
   1st Occur of SOC w/in Trt Prd FL

AOCPPFL
   1st Occur of PT w/in Trt Prd FL

Source
~~~~~~

Generated from admiral package (template ad_admh.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("admh")
