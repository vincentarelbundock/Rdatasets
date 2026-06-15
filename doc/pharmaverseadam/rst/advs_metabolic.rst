============== ===============
advs_metabolic R Documentation
============== ===============

Vital Signs Analysis for Metabolic
----------------------------------

Description
~~~~~~~~~~~

Vital Signs Analysis for Metabolic

Usage
~~~~~

.. code:: R

   advs_metabolic

Format
~~~~~~

A data frame with 101 columns:

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

PARCAT1
   Parameter Category 1

PARCAT1N
   Parameter Category 1 (N)

AVAL
   Analysis Value

AVALCAT1
   Analysis Value Category 1

AVALCA1N
   Analysis Value Category 1 (N)

BASE
   Baseline Value

BASECAT1
   Baseline Category 1

BASECA1N
   Baseline Category 1 (N)

CHG
   Change from Baseline

PCHG
   Percent Change from Baseline

CRIT1
   Analysis Criterion 1

CRIT1FL
   Criterion 1 Evaluation Result Flag

CRIT2
   Analysis Criterion 2

CRIT2FL
   Criterion 2 Evaluation Result Flag

ABLFL
   Baseline Record Flag

VSSEQ
   Sequence Number

VSTESTCD
   Vital Signs Test Short Name

VSTEST
   Vital Signs Test Name

VSPOS
   Vital Signs Position of Subject

VSORRES
   Result or Finding in Original Units

VSORRESU
   Original Units

VSSTRESC
   Character Result/Finding in Std Format

VSSTRESN
   Numeric Result/Finding in Standard Units

VSSTRESU
   Standard Units

VSSTAT
   Completion Status

VSLOC
   Location of Vital Signs Measurement

VSBLFL
   Baseline Flag

VISITNUM
   Visit Number

VISIT
   Visit Name

VISITDY
   Planned Study Day of Visit

VSDTC
   Date/Time of Measurements

VSDY
   Study Day of Vital Signs

VSTPT
   Planned Time Point Name

VSTPTNUM
   Planned Time Point Number

VSELTM
   Planned Elapsed Time from Time Point Ref

VSTPTREF
   Time Point Reference

Details
~~~~~~~

Contains a set of 10 unique Parameter Codes and Parameters:

=========== ===============================
**PARAMCD** **PARAM**
BMI         Body Mass Index (kg/m2)
DIABP       Diastolic Blood Pressure (mmHg)
HEIGHT      Height (cm)
HIPCIR      Hip Circumference (cm)
PULSE       Pulse Rate (beats/min)
SYSBP       Systolic Blood Pressure (mmHg)
TEMP        Temperature (C)
WAISTHIP    Waist to Hip Ratio
WEIGHT      Weight (kg)
WSTCIR      Waist Circumference (cm)
=========== ===============================

Source
~~~~~~

Generated from admiralmetabolic package (template ad_advs.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("advs_metabolic")
