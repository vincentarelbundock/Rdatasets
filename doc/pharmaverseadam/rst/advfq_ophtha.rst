============ ===============
advfq_ophtha R Documentation
============ ===============

Visual Function Questionnaire Analysis
--------------------------------------

Description
~~~~~~~~~~~

Visual Function Questionnaire Analysis

Usage
~~~~~

.. code:: R

   advfq_ophtha

Format
~~~~~~

A data frame with 89 columns:

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

ASEQ
   Analysis Sequence Number

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

ADT
   Analysis Date

ADY
   Analysis Relative Day

AVISIT
   Analysis Visit

AVISITN
   Analysis Visit (N)

PARAM
   Parameter

PARAMCD
   Parameter Code

PARCAT1
   Parameter Category 1

PARCAT2
   Parameter Category 2

AVAL
   Analysis Value

AVALC
   Analysis Value (C)

BASE
   Baseline Value

CHG
   Change from Baseline

PCHG
   Percent Change from Baseline

ABLFL
   Baseline Record Flag

ANL01FL
   Analysis Flag 01

ONTRTFL
   On Treatment Record Flag

QSSEQ
   Sequence Number

QSTESTCD
   Question Short Name

QSTEST
   Question Name

QSCAT
   Category of Question

QSSCAT
   Subcategory for Question

QSORRES
   Finding in Original Units

QSORRESU
   Original Units

QSSTRESC
   Character Result/Finding in Std Format

QSSTRESN
   Numeric Finding in Standard Units

QSSTRESU
   Standard Units

QSBLFL
   Baseline Flag

QSDRVFL
   Derived Flag

VISITNUM
   Visit Number

VISIT
   Visit Name

VISITDY
   Planned Study Day of Visit

QSDTC
   Date/Time of Finding

QSDY
   Study Day of Finding

Details
~~~~~~~

Contains a set of 11 unique Parameter Codes and Parameters:

=========== =======================
**PARAMCD** **PARAM**
QBCSCORE    Composite Score
QR01        Recoded Item - 01
QR02        Recoded Item - 02
QR03        Recoded Item - 03
QR04        Recoded Item - 04
QSG01       General Score 01
QSG02       General Score 02
VFQ1        Overall Health
VFQ2        Eyesight in Both Eyes
VFQ3        Worry About Eyesight
VFQ4        Pain in and Around Eyes
=========== =======================

Source
~~~~~~

Generated from admiralophtha package (template ad_advfq.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("advfq_ophtha")
