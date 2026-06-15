========= ===============
adtr_onco R Documentation
========= ===============

Tumor Results Analysis for Oncology
-----------------------------------

Description
~~~~~~~~~~~

Tumor Results Analysis for Oncology

Usage
~~~~~

.. code:: R

   adtr_onco

Format
~~~~~~

A data frame with 99 columns:

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

PDFL
   Pharmacodynamic Analysis Set Flag

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

DTHCAUS
   Cause of Death

DTHCGR1
   Cause of Death Reason 1

ADT
   Analysis Date

ADY
   Analysis Relative Day

ADTF
   Analysis Date Imputation Flag

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

PARCAT3
   Parameter Category 3

AVAL
   Analysis Value

BASE
   Baseline Value

CHG
   Change from Baseline

PCHG
   Percent Change from Baseline

NADIR
   NADIR

CHGNAD
   Change from NADIR

PCHGNAD
   Percent Change from NADIR

ABLFL
   Baseline Record Flag

ANL01FL
   Analysis Flag 01

ANL02FL
   Analysis Flag 02

ANL03FL
   Analysis Flag 03

ANL04FL
   Analysis Flag 04

TRSEQ
   Sequence Number

TRGRPID
   Group ID

TRLNKID
   Link ID

TRTESTCD
   Tumor/Lesion Assessment Short Name

TRTEST
   Tumor/Lesion Assessment Test Name

TRORRES
   Result or Finding in Original Units

TRORRESU
   Original Units

TRSTRESC
   Character Result/Finding in Std Format

TRSTRESN
   Numeric Result/Finding in Standard Units

TRSTRESU
   Standard Units

TREVAL
   Evaluator

TREVALID
   Evaluator Identifier

TRACPTFL
   Accepted Record Flag

VISITNUM
   Visit Number

VISIT
   Visit Name

TRDTC
   Date/Time of Tumor/Lesion Measurement

TULOC
   Location of the Tumor/Lesion

TULOCGR1
   Tumor Site Group 1

LSEXP
   Lesion IDs Expected

LSASS
   Lesion IDs Assessed

DTHDTF
   Date of Death Imputation Flag

Details
~~~~~~~

Contains a set of 11 unique Parameter Codes and Parameters:

=========== ===============================================
**PARAMCD** **PARAM**
LDIAM1      Target Lesion 1 Analysis Diameter
LDIAM2      Target Lesion 2 Analysis Diameter
LDIAM3      Target Lesion 3 Analysis Diameter
LDIAM4      Target Lesion 4 Analysis Diameter
LDIAM5      Target Lesion 5 Analysis Diameter
NLDIAM1     Target Lesion 1 Analysis Perpendicular
NLDIAM2     Target Lesion 2 Analysis Perpendicular
NLDIAM3     Target Lesion 3 Analysis Perpendicular
NLDIAM4     Target Lesion 4 Analysis Perpendicular
NLDIAM5     Target Lesion 5 Analysis Perpendicular
SDIAM       Target Lesions Sum of Diameters by Investigator
=========== ===============================================

Source
~~~~~~

Generated from admiralonco package (template ad_adtr.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adtr_onco")
