========= ===============
advs_peds R Documentation
========= ===============

Vital Signs Analysis for Pediatrics
-----------------------------------

Description
~~~~~~~~~~~

Vital Signs Analysis for Pediatrics

Usage
~~~~~

.. code:: R

   advs_peds

Format
~~~~~~

A data frame with 80 columns:

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

DTHDTC
   Date/Time of Death

DTHFL
   Subject Death Flag

ASEQ
   Analysis Sequence Number

BRTHDTC
   Date/Time of Birth (Character)

BRTHDT
   Date/Time of Birth

DMDTC
   Date/Time of Collection

DMDY
   Study Day of Collection

AGE
   Age

AGEU
   Age Units

SEX
   Sex

RACE
   Race

ETHNIC
   Ethnicity

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

RFICDTC
   Date/Time of Informed Consent

TRTDURD
   Total Treatment Duration (Days)

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

AVAL
   Analysis Value

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

EPOCH
   Epoch

VSEVAL
   Evaluator

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

AAGECUR
   Current Analysis Age (Days)

AAGECURU
   Current Analysis Age Units

HGTTMP
   Temporary Height at Timepoint

HGTTMPU
   Temporary Height at Timepoint Units

Details
~~~~~~~

Contains a set of 14 unique Parameter Codes and Parameters:

=========== =====================================
**PARAMCD** **PARAM**
BMI         Body Mass Index(kg/m^2)
BMIPCTL     BMI-for-age percentile
BMISDS      BMI-for-age z-score
HDCIRC      Head Circumference (cm)
HDCPCTL     Head Circumference-for-age percentile
HDCSDS      Head Circumference-for-age z-score
HEIGHT      Height (cm)
HGTPCTL     Height-for-age percentile
HGTSDS      Height-for-age z-score
WEIGHT      Weight (kg)
WGTAPCTL    Weight-for-age percentile
WGTASDS     Weight-for-age z-score
WGTHPCTL    Weight-for-length/height Percentile
WGTHSDS     Weight-for-length/height Z-Score
=========== =====================================

Source
~~~~~~

Generated from admiralpeds package (template ad_advs.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("advs_peds")
