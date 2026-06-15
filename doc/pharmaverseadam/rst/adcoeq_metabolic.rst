================ ===============
adcoeq_metabolic R Documentation
================ ===============

Questionnaires Analysis for Metabolic
-------------------------------------

Description
~~~~~~~~~~~

Questionnaires Analysis for Metabolic

Usage
~~~~~

.. code:: R

   adcoeq_metabolic

Format
~~~~~~

A data frame with 85 columns:

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

PARAMN
   Parameter (N)

PARCAT1
   Parameter Category 1

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

VISIT
   Visit Name

VISITNUM
   Visit Number

VISITDY
   Planned Study Day of Visit

QSBLFL
   Baseline Flag

QSDTC
   Date/Time of Finding

QSDY
   Study Day of Finding

QSCAT
   Category for Questionnaire

QSTEST
   Questionnaire Test Name

QSTESTCD
   Questionnaire Test Short Name

QSORRES
   Result or Finding in Original Units

QSORRESU
   Original Units

QSSTRESC
   Character Result/Finding in Std Format

QSSTRESN
   Numeric Result/Finding in Standard Units

QSSTRESU
   Standard Units

QSSEQ
   Sequence Number

Details
~~~~~~~

Contains a set of 25 unique Parameter Codes and Parameters:

+-------------+--------------------------------------------------------+
| **PARAMCD** | **PARAM**                                              |
+-------------+--------------------------------------------------------+
| COEQ01      | How hungry have you felt?                              |
+-------------+--------------------------------------------------------+
| COEQ02      | How full have you felt?                                |
+-------------+--------------------------------------------------------+
| COEQ03      | How strong was your desire to eat sweet foods?         |
+-------------+--------------------------------------------------------+
| COEQ04      | How strong was your desire to eat savoury foods?       |
+-------------+--------------------------------------------------------+
| COEQ05      | How happy have you felt?                               |
+-------------+--------------------------------------------------------+
| COEQ06      | How anxious have you felt?                             |
+-------------+--------------------------------------------------------+
| COEQ07      | How alert have you felt?                               |
+-------------+--------------------------------------------------------+
| COEQ08      | How contented have you felt?                           |
+-------------+--------------------------------------------------------+
| COEQ09      | During the last 7 days how often have you had food     |
|             | cravings?                                              |
+-------------+--------------------------------------------------------+
| COEQ10      | How strong have any food cravings been?                |
+-------------+--------------------------------------------------------+
| COEQ11      | How difficult has it been to resist any food cravings? |
+-------------+--------------------------------------------------------+
| COEQ12      | How often have you eaten in response to food cravings? |
+-------------+--------------------------------------------------------+
| COEQ13      | Chocolate or chocolate flavoured foods                 |
+-------------+--------------------------------------------------------+
| COEQ14      | Other sweet foods (cakes, pastries, biscuits, etc)     |
+-------------+--------------------------------------------------------+
| COEQ15      | Fruit or fruit juice                                   |
+-------------+--------------------------------------------------------+
| COEQ16      | Dairy foods (cheese, yoghurts, milk, etc)              |
+-------------+--------------------------------------------------------+
| COEQ17      | Starchy foods (bread, rice, pasta, etc)                |
+-------------+--------------------------------------------------------+
| COEQ18      | Savoury foods (french fries, crisps, burgers, pizza,   |
|             | etc)                                                   |
+-------------+--------------------------------------------------------+
| COEQ19      | Generally, how difficult has it been to control your   |
|             | eating?                                                |
+-------------+--------------------------------------------------------+
| COEQ20      | Which one food makes it most difficult for you to      |
|             | control eating?                                        |
+-------------+--------------------------------------------------------+
| COEQ21      | How difficult has it been to resist eating this food   |
|             | during the last 7 days?                                |
+-------------+--------------------------------------------------------+
| COEQCRCO    | COEQ - Craving Control                                 |
+-------------+--------------------------------------------------------+
| COEQCRSA    | COEQ - Craving for Savoury                             |
+-------------+--------------------------------------------------------+
| COEQCRSW    | COEQ - Craving for Sweet                               |
+-------------+--------------------------------------------------------+
| COEQPOMO    | COEQ - Positive Mood                                   |
+-------------+--------------------------------------------------------+

Source
~~~~~~

Generated from admiralmetabolic package (template ad_adcoeq.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adcoeq_metabolic")
