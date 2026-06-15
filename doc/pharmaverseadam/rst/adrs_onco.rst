========= ===============
adrs_onco R Documentation
========= ===============

Tumor Response Analysis
-----------------------

Description
~~~~~~~~~~~

Tumor Response Analysis

Usage
~~~~~

.. code:: R

   adrs_onco

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

DTHCAUS
   Cause of Death

DTHCGR1
   Cause of Death Reason 1

ADT
   Analysis Date

ADTF
   Analysis Date Imputation Flag

AVISIT
   Analysis Visit

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

AVALC
   Analysis Value (C)

ANL01FL
   Analysis Flag 01

ANL02FL
   Analysis Flag 02

VISITNUM
   Visit Number

VISIT
   Visit Name

RSTESTCD
   Assessment Short Name

RSTEST
   Assessment Name

RSORRES
   Result or Finding in Original Units

RSSTRESC
   Character Result/Finding in Std Format

RSEVAL
   Evaluator

RSEVALID
   Evaluator Identifier

RSACPTFL
   Accepted Record Flag

RSDTC
   Date/Time of Assessment

RSSEQ
   Sequence Number

DTHDTF
   Date of Death Imputation Flag

Details
~~~~~~~

Contains a set of 13 unique Parameter Codes and Parameters:

+-------------+--------------------------------------------------------+
| **PARAMCD** | **PARAM**                                              |
+-------------+--------------------------------------------------------+
| BCP         | Best Overall Response of CR/PR by Investigator         |
|             | (confirmation not required)                            |
+-------------+--------------------------------------------------------+
| BOR         | Best Overall Response by Investigator (confirmation    |
|             | not required)                                          |
+-------------+--------------------------------------------------------+
| CB          | Clinical Benefit by Investigator (confirmation for     |
|             | response not required)                                 |
+-------------+--------------------------------------------------------+
| CBCP        | Best Confirmed Overall Response of CR/PR by            |
|             | Investigator                                           |
+-------------+--------------------------------------------------------+
| CBOR        | Best Confirmed Overall Response by Investigator        |
+-------------+--------------------------------------------------------+
| CCB         | Confirmed Clinical Benefit by Investigator             |
+-------------+--------------------------------------------------------+
| CRSP        | Confirmed Response by Investigator                     |
+-------------+--------------------------------------------------------+
| DEATH       | Death                                                  |
+-------------+--------------------------------------------------------+
| LSTA        | Last Disease Assessment by Investigator                |
+-------------+--------------------------------------------------------+
| MDIS        | Measurable Disease at Baseline by Investigator         |
+-------------+--------------------------------------------------------+
| OVR         | Overall Response by Investigator                       |
+-------------+--------------------------------------------------------+
| PD          | Disease Progression by Investigator                    |
+-------------+--------------------------------------------------------+
| RSP         | Response by Investigator (confirmation not required)   |
+-------------+--------------------------------------------------------+

Source
~~~~~~

Generated from admiralonco package (template ad_adrs.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adrs_onco")
