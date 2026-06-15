==== ===============
adeg R Documentation
==== ===============

Electrocardiogram Tests Analysis
--------------------------------

Description
~~~~~~~~~~~

Electrocardiogram Tests Analysis

Usage
~~~~~

.. code:: R

   adeg

Format
~~~~~~

A data frame with 108 columns:

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

ADTM
   Analysis Datetime

ADY
   Analysis Relative Day

ATMF
   Analysis Time Imputation Flag

AVISIT
   Analysis Visit

AVISITN
   Analysis Visit (N)

ATPT
   Analysis Timepoint

ATPTN
   Analysis Timepoint (N)

PARAM
   Parameter

PARAMCD
   Parameter Code

PARAMN
   Parameter (N)

AVAL
   Analysis Value

AVALC
   Analysis Value (C)

AVALCAT1
   Analysis Value Category 1

AVALCA1N
   Analysis Value Category 1 (N)

BASE
   Baseline Value

BASEC
   Baseline Value (C)

BASETYPE
   Baseline Type

CHG
   Change from Baseline

CHGCAT1
   Change from Baseline Category 1

CHGCAT1N
   Change from Baseline Category 1 (N)

PCHG
   Percent Change from Baseline

DTYPE
   Derivation Type

ANRIND
   Analysis Reference Range Indicator

BNRIND
   Baseline Reference Range Indicator

ANRLO
   Analysis Normal Range Lower Limit

ANRHI
   Analysis Normal Range Upper Limit

ABLFL
   Baseline Record Flag

ANL01FL
   Analysis Flag 01

ONTRTFL
   On Treatment Record Flag

EGSEQ
   Sequence Number

EGTESTCD
   ECG Test or Examination Short Name

EGTEST
   ECG Test or Examination Name

EGORRES
   Result or Finding in Original Units

EGORRESU
   Original Units

EGSTRESC
   Character Result/Finding in Std Format

EGSTRESN
   Numeric Result/Finding in Standard Units

EGSTRESU
   Standard Units

EGSTAT
   Completion Status

EGLOC
   Lead Location Used for Measurement

EGBLFL
   Baseline Flag

VISITNUM
   Visit Number

VISIT
   Visit Name

VISITDY
   Planned Study Day of Visit

EGDTC
   Date/Time of ECG

EGDY
   Study Day of ECG

EGTPT
   Planned Time Point Name

EGTPTNUM
   Planned Time Point Number

EGELTM
   Planned Elapsed Time from Time Point Ref

EGTPTREF
   Time Point Reference

Details
~~~~~~~

Contains a set of 8 unique Parameter Codes and Parameters:

=========== =====================================================
**PARAMCD** **PARAM**
EGINTP      ECG Interpretation
HR          Heart Rate (beats/min)
QT          QT Duration (ms)
QTCBR       QTcB - Bazett's Correction Formula Rederived (ms)
QTCFR       QTcF - Fridericia's Correction Formula Rederived (ms)
QTLCR       QTlc - Sagie's Correction Formula Rederived (ms)
RR          RR Duration (ms)
RRR         RR Duration Rederived (ms)
=========== =====================================================

Source
~~~~~~

Generated from admiral package (template ad_adeg.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adeg")
