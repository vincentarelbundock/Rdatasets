============ ===============
adis_vaccine R Documentation
============ ===============

Immunogenicity Specimen Assessments
-----------------------------------

Description
~~~~~~~~~~~

Immunogenicity Specimen Assessments

Usage
~~~~~

.. code:: R

   adis_vaccine

Format
~~~~~~

A data frame with 103 columns:

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

REGION1
   Geographic Region 1

BRTHDTC
   Date/Time of Birth

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

PPROTFL
   Per-Protocol Population Flag

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

TRT02P
   Planned Treatment for Period 02

TRT02A
   Actual Treatment for Period 02

TRTSDT
   Date of First Exposure to Treatment

TRTSDTM
   Datetime of First Exposure to Treatment

TRTEDT
   Date of Last Exposure to Treatment

TRTEDTM
   Datetime of Last Exposure to Treatment

AP01SDT
   Period 01 Start Date

AP01EDT
   Period 01 End Date

AP02SDT
   Period 02 Start Date

AP02EDT
   Period 02 End Date

APERSDT
   Period Start Date

APEREDT
   Period End Date

RFICDTC
   Date/Time of Informed Consent

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

ATPTREF
   Analysis Timepoint Reference

APERIOD
   Period

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

AVALU
   Analysis Value Unit

BASE
   Baseline Value

BASECAT1
   Baseline Category 1

BASETYPE
   Baseline Type

CHG
   Change from Baseline

R2BASE
   Ratio to Baseline

CRIT1
   Analysis Criterion 1

CRIT1FL
   Criterion 1 Evaluation Result Flag

CRIT1FN
   Criterion 1 Evaluation Result Flag (N)

DTYPE
   Derivation Type

ABLFL
   Baseline Record Flag

ISSEQ
   Sequence Number

ISTESTCD
   Immunogenicity Test/Exam Short Name

ISTEST
   Immunogenicity Test or Examination Name

ISCAT
   Category for Immunogenicity Test

ISORRES
   Results or Findings in Original Units

ISORRESU
   Original Units

ISSTRESC
   Character Result/Finding in Std Format

ISSTRESN
   Numeric Results/Findings in Std. Units

ISSTRESU
   Standard Units

ISSTAT
   Completion Status

ISREASND
   Reason Not Done

ISNAM
   Vendor Name

ISSPEC
   Specimen Type

ISMETHOD
   Method of Test or Examination

ISBLFL
   Baseline Flag

ISLLOQ
   Lower Limit of Quantitation

VISITNUM
   Visit Number

EPOCH
   Epoch

ISDTC
   Date/Time of Collection

ISDY
   Study Day of Visit/Collection/Exam

ISULOQ
   Upper Limit of Quantitation

LOD
   Limit of Detection

DERIVED
   Derivation Method

CUTOFF02
   First Cutoff Value

CUTOFF03
   Second Cutoff Value

SERCAT1
   Pre-vaccination seropositivity status

SERCAT1N
   Pre-vaccination sero status (n)

PPSRFL
   Per-Protocol Record-Level Flag

INVID
   Investigator Identifier

INVNAM
   Investigator Name

VAX01DT
   Vaccination Date 01

VAX02DT
   Vaccination Date 02

Details
~~~~~~~

Contains a set of 16 unique Parameter Codes and Parameters:

=========== ==============================
**PARAMCD** **PARAM**
I0019NLF    LOG10 4FOLD (I0019NT Antibody)
I0019NT     I0019NT Antibody
I0019NTF    4FOLD (I0019NT Antibody)
I0019NTL    LOG10 (I0019NT Antibody)
J0033VLF    LOG10 4FOLD (J0033VN Antibody)
J0033VN     J0033VN Antibody
J0033VNF    4FOLD (J0033VN Antibody)
J0033VNL    LOG10 (J0033VN Antibody)
M0019LLF    LOG10 4FOLD (M0019LN Antibody)
M0019LN     M0019LN Antibody
M0019LNF    4FOLD (M0019LN Antibody)
M0019LNL    LOG10 (M0019LN Antibody)
R0003MA     R0003MA Antibody
R0003MAF    4FOLD (R0003MA Antibody)
R0003MAL    LOG10 (R0003MA Antibody)
R0003MLF    LOG10 4FOLD (R0003MA Antibody)
=========== ==============================

Source
~~~~~~

Generated from admiralvaccine package (template ad_adis.R).

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   data("adis_vaccine")
